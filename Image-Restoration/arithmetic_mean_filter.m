function resimg = arithmetic_mean_filter()

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
  
  % create 5 x 5 mask
  mask = ones(5,5) / 25;
  
  % apply filter on image
  resimg = imfilter(img, mask);
  
  % display results
  subplot(1,2,1),imshow(img);
  title('Original Image','FontSize',10);
  
  subplot(1,2,2),imshow(resimg);
  title('After applying Arithmetic Mean Filter','FontSize',10);

end
