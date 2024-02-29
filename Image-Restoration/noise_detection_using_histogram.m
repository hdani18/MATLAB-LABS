function resimg = noise_detection_using_histogram()
  
  %%
  %
  % GAUSSIAN NOISE
  %
  % prompt user to select an image file with Gaussian noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Gaussian Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,3),imshow(img);
  title('Gaussian Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,9),imhist(img);
  
  %%
  %
  % RAYLEIGH NOISE
  %
  % prompt user to select an image file with Rayleigh noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Rayleigh Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,4),imshow(img);
  title('Rayleigh Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,10),imhist(img);
  
  %%
  %
  % GAMMA NOISE
  %
  % prompt user to select an image file with Gamma noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Gamma Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,2),imshow(img);
  title('Gamma Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,8),imhist(img);
  
  %%
  %
  % EXPONENTIAL NOISE
  %
  % prompt user to select an image file with Exponential noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Exponential Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,6),imshow(img);
  title('Exponential Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,12),imhist(img);
  
  %%
  %
  % UNIFORM NOISE
  %
  % prompt user to select an image file with Uniform noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Uniform Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,1),imshow(img);
  title('Uniform Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,7),imhist(img);
  
  %%
  %
  % IMPULSE NOISE
  %
  % prompt user to select an image file with Impulse noise
  [filename, pathname] = uigetfile({'*.tif;*.tiff', 'TIFF Images (*.tif, *.tiff)'},'Select an Image File with Impulse Noise');
  
  % check if user canceled the operation
  if isequal(filename, 0)
      disp('User canceled the operation.');
      return;
  end
  
  % construct full path to the selected image
  impath = fullfile(pathname, filename);
  
  % read image
  img = imread(impath);
  
  subplot(2,6,5),imshow(img);
  title('Impulse Noise','FontSize',10);
  
  % plot histogram for the input image
  subplot(2,6,11),imhist(img);
  
end
