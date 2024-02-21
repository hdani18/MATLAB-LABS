function resimg = horizontal_flip()
  
  % prompt user to select an image file
  [filename, filepath] = uigetfile({'*.jpg;*.jpeg;*.png;*.bmp','Image Files'}, 'Select an image file');
  if filename == 0
      disp('No file selected. Exiting function.');
      return;
  end
  
  % construct the full path to the selected image
  impath = fullfile(filepath, filename);
  
  img = imread(impath);
  
  % fetch the dimensions of the image
  [nr,nc,n] = size(img);
  
  % logic for flipping the image
  for i = 1:nr
    resimg(i,1:nc,1:n) = img(nr-i+1,1:nc,1:n);
  end

  % plot the results
  subplot(1,2,1),imshow(img);
  title('Original Image','FontSize',18);
  
  subplot(1,2,2),imshow(resimg);
  title('Horizontally Flipped Image','FontSize',18);
  
end