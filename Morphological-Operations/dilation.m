function resimg = dilation()
  
  % Use uigetfile to interactively select an image file
  [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an Image File');
  if filename == 0
      disp('User canceled the operation.');
      return;
  end
  impath = fullfile(pathname, filename);

  % Read the image
  img = imread(impath);
  
  % Convert to grayscale only if the original image is RGB or Colormap
  % img = rgb2gray(img);
  
  % Create structuring element 
  % Visit https://in.mathworks.com/help/images/ref/strel.html for more information on structuring element
  se = strel('square', 10); % Create a square structuring element of 10px x 10px side length
  
  % Perform dilation using imdilate
  resimg = imdilate(img, se);
  
  % Plot results
  subplot(1, 2, 1), imshow(img);
  title('Original Gray Image', 'FontSize', 18);
  
  subplot(1, 2, 2), imshow(resimg);
  title('Image After Dilation', 'FontSize', 18);
  
end
