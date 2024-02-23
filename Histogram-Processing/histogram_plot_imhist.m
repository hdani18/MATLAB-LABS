function [count, grayscale] = histogram_plot_imhist()

  % Prompt user to select an image file
  [filename, filepath] = uigetfile({'*.jpg;*.jpeg;*.png;*.bmp','Image Files'}, 'Select an image file');
  if filename == 0
      disp('No file selected. Exiting function.');
      return;
  end
  
  % Construct the full path to the selected image
  impath = fullfile(filepath, filename);

  % Read image
  img = imread(impath);
  
  % Convert the image to grayscale
  imggray = rgb2gray(img);  % Optional: only if the image is color

  % Compute the histogram using imhist function
  [count, grayscale] = imhist(imggray);
  
  % Show Image
  subplot(1,2,1), imshow(imggray);
  title('Image', 'FontSize', 20);
  
  % Plot the histogram
  subplot(1,2,2), bar(grayscale, count, 'BarWidth', 1);
  
  % Set x-axis label
  xlabel('Gray Level', 'FontSize', 20);
  
  % Set y-axis label
  ylabel('Pixel Count', 'FontSize', 20);
  
  % Set title of the plot
  title('Histogram Plot imhist', 'FontSize', 20);
  
end