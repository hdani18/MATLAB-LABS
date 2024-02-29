function resimg = remove_uniform_noise()

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
  
  % convert rgb image to gray scale only if input image is colormap
  % img = rgb2gray(img);
  
  subplot(1,3,1),imshow(img);
  title('Image with Uniform Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(1,3,2),imhist(img);
  title('Histogram','FontSize',10);
  
  % remove uniform noise using arithmetic mean filter
  % create 5 x 5 mask
  mask = ones(5,5) / 25;
  
  % apply filter on image
  resimg = imfilter(img,mask);
  
  % plot the results
  subplot(1,3,3),imshow(resimg);
  title('After removing Uniform Noise','FontSize',10);
  
end