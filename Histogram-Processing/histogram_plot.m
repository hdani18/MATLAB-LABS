function [count, grayscale] = histogram_plot()

  % Allow user to select the image file
  [filename, filepath] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'All Image Files'}, 'Select Image File');
  if isequal(filename, 0)
      disp('User canceled the operation');
      return;
  end
  impath = fullfile(filepath, filename);

  % Read image
  img = imread(impath);
  
  % Convert image to grayscale (optional if image is already grayscale)
  imggray = rgb2gray(img);  
  
  % Fetch image dimensions
  [nr, nc] = size(imggray);
  
  % Define grayscale (all the possible intensity values in the image)
  grayscale = 0:255;

  % Initialize count array
  count = zeros(1, 256);
  
  % Calculate histogram
  for i = 1:nr
      for j = 1:nc
        count(imggray(i,j) + 1) = count(imggray(i,j) + 1) + 1;
      end
  end
  
  % Show Image
  subplot(1, 2, 1);
  imshow(imggray);
  title('Image','FontSize',20);
  
  % Plot the histogram
  subplot(1, 2, 2);
  bar(grayscale, count, 'BarWidth', 1);
  
  % Define xlabel
  xlabel('Gray Level','FontSize',20);
  
  % Define ylabel
  ylabel('Pixel Count','FontSize',20);
  
  % Title of the plot
  title('Histogram Plot','FontSize',20);
  
end
