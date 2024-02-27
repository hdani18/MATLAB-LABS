function [] = logical_arithmetic_operations()
  
  % Use uigetfile to interactively select an image file
  [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an Image File');
  if filename == 0
      disp('User canceled the operation.');
      return;
  end
  impath = fullfile(pathname, filename);

  % read image
  img = imread(impath);
  
  % convert rgb image to grayscale
  imgray = rgb2gray(img);

  % get the dimensions of image
  [nr,nc] = size(imgray);
  
  % generate black mask image of the same size of imgray
  imgmask = uint8(zeros(nr,nc));
  
  % add two white rectangles in place of eyes
  % you need to adjust the maskeye size according to your need and imgmask size
  maskeye = 255 .* ones(101,101);
  
  % place the maskeye in correct cordinate where your eyes are located
  % create left eye mask
  imgmask(255:355,225:325)= maskeye;
  
  % create right eye mask
  imgmask(255:355,425:525)= maskeye;

  %%
  % Logical and Arithmetic Operations  
  %
  % bitwise and
  imand = bitand(imgray,imgmask);
  % bitwise or
  imor = bitor(imgray,imgmask);
  % bitwise sum
  imsum = uint8(imadd(imgray,imgmask));
  % bitwise sub
  imsub = uint8(imsubtract(imgray,imgmask));
  %%
  
  % display results
  subplot(2,3,1),imshow(imgray);
  title('My Gray Image','FontSize',5);
  subplot(2,3,4),imshow(imgmask);
  title('My Mask Image','FontSize',5);
  subplot(2,3,2),imshow(imand);
  title('AND Image','FontSize',5);
  subplot(2,3,5),imshow(imor);
  title('OR Image','FontSize',5);
  subplot(2,3,3),imshow(imsum);
  title('SUM Image','FontSize',5);
  subplot(2,3,6),imshow(imsub);
  title('SUB Image','FontSize',5);
  
end
