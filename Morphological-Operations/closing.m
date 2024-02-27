function resimg = closing()
  
  % Use uigetfile to interactively select an image file
  [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an Image File');
  if filename == 0
      disp('User canceled the operation.');
      return;
  end
  impath = fullfile(pathname, filename);

  % Read the image
  img = imread(impath);
  
  % Convert to grayscale if needed
  % img = rgb2gray(img);
  
  % Create circle structuring element
  % Visit https://in.mathworks.com/help/images/ref/strel.html for more information on structuring elements
  se = strel('disk', 10, 0);
  
  % Perform closing operation using imclose
  resimg = imclose(img, se);
  
  % Plot results
  subplot(1, 2, 1), imshow(img);
  title('Original Gray Image', 'FontSize', 18);
  
  subplot(1, 2, 2), imshow(resimg);
  title('Image After Closing', 'FontSize', 18);
  
end
