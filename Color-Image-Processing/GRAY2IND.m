function imind = GRAY2IND()
  
  % prompt user to select an image file
  [filename, filepath] = uigetfile({'*.jpg;*.jpeg;*.png;*.bmp','Image Files'}, 'Select an image file');
  if filename == 0
      disp('No file selected. Exiting function.');
      return;
  end
  
  % construct the full path to the selected image
  impath = fullfile(filepath, filename);
  
  % read image
  img = imread(impath);
  
  % convert grayscale image to indexed image
  imind = gray2ind(img);
  
  % plot the results
  subplot(1,2,1),imshow(img);
  title('Original RGB image','FontSize',10);
  
  subplot(1,2,2),imshow(imind);
  title('Indexed image','FontSize',10);
  
end
