function histogram_equalization_inbuilt()
  
  % Prompt user to select an image file
  [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files (*.jpg, *.png, *.bmp)'}, 'Select an Image File');
  
  % Check if user canceled file selection
  if isequal(filename, 0) || isequal(pathname, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % Construct full file path
  imgpath = fullfile(pathname, filename);
  
  % Read image
  img = imread(imgpath);
  
  % Convert RGB image to grayscale (optional)
  imggray = rgb2gray(img);
  
  % Perform histogram equalization
  img_new = histeq(imggray);
  
  % Plot the inputs & outputs
  subplot(2,2,1), imshow(imggray);
  title('Gray Image');
  subplot(2,2,3), imhist(imggray);
  title('Histogram Plot');
  subplot(2,2,4), imhist(img_new);
  title('Histogram Equalization');
  subplot(2,2,2), imshow(img_new);
  title('New Image');

end
