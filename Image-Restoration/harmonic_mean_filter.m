function resimg = harmonic_mean_filter()
  
  % prompt user to select an image file
  [filename, pathname] = uigetfile({'*.jpg;*.jpeg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.jpeg, *.png, *.bmp, *.tif)'},'Select an Image File');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      resimg = []; % return empty if user cancels
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  % convert image from uint8 to double
  imdouble = double(img);
  
  % get image dimensions
  [nr,nc] = size(img);
  
  resimg(1,:) = imdouble(1,:);
  resimg(1:nr,1) = imdouble(1:nr,1);
  resimg(nr,:) = imdouble(nr,:);
  resimg(1:nr,nc) = imdouble(1:nr,nc);
  
  % apply filter on image
  for i = 2:(nr-1)
    for j = 2:(nc-1)
       resimg(i,j) = 9 / (...
           (1 / (imdouble(i-1,j-1) + 1)) + (1 / (imdouble(i-1,j) + 1)) + (1 / (imdouble(i-1,j+1) + 1)) + ...
           (1 / (imdouble(i,j-1) + 1)) + (1 / (imdouble(i,j) + 1)) + (1 / (imdouble(i,j+1) + 1)) + ...
           (1 / (imdouble(i+1,j-1) + 1)) + (1 / (imdouble(i+1,j) + 1)) + (1 / (imdouble(i+1,j+1) + 1)) ...
       );
    end
  end
  
  % convert result image from double to uint8
  resimg = uint8(resimg);
  
  % display results
  subplot(1,2,1),imshow(img);
  title('Original Image','FontSize',10);
  
  subplot(1,2,2),imshow(resimg);
  title('After applying Harmonic Mean Filter','FontSize',10);
  
end
