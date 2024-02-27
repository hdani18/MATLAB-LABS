function imyiq = RGB2NTSC()

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
  
  % convert rgb image to yiq image
  imyiq = rgb2ntsc(img);
  
  % plot the results
  subplot(1,3,1),imshow(img);
  title('Original RGB image','FontSize',10);
  
  subplot(1,3,2),imshow(imyiq);
  title('NTSC image','FontSize',10);
  
  subplot(1,3,3),imshow(imyiq(:,:,1));
  title('Illuminance Component','FontSize',10);

end
