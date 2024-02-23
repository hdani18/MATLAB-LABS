function [res] = histogram_matching_inbuild()

  % Allow user to select the input image file
  [infilename, infolder] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'All Image Files'}, 'Select Input Image File');
  if isequal(infilename, 0)
      disp('User canceled the operation');
      return;
  end
  inpath = fullfile(infolder, infilename);
  
  % Allow user to select the output image file
  [outfilename, outfolder] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'All Image Files'}, 'Select Output Image File');
  if isequal(outfilename, 0)
      disp('User canceled the operation');
      return;
  end
  outpath = fullfile(outfolder, outfilename);

  % Read images
  img1 = imread(inpath);
  img2 = imread(outpath);

  % Convert images to grayscale (optional if images are already grayscale)
  imggray1 = rgb2gray(img1);
  imggray2 = rgb2gray(img2);

  % Calculate dimensions of both the images
  [nr1, nc1] = size(imggray1);
  [nr2, nc2] = size(imggray2);

  % Plot histogram for input image
  arr1 = imhist(imggray1);

  % Plot histogram for output image
  arr2 = imhist(imggray2);

  % Perform histogram matching
  imgnew1 = histeq(imggray1, arr2);

  % Display the results
  subplot(2,3,1), imshow(imggray1);
  title('Gray Image 1','FontSize',10);
  subplot(2,3,2), imshow(imggray2);
  title('Gray Image 2','FontSize',10);
  subplot(2,3,4), bar(0:255, arr1, 1);
  title('Image 1','FontSize',10);
  subplot(2,3,5), bar(0:255, arr2, 1);
  title('Image 2','FontSize',10);
  subplot(2,3,6), bar(0:255, imhist(imgnew1), 1);
  title('Histogram Output','FontSize',10);
  subplot(2,3,3), imshow(imgnew1);
  title('New Image','FontSize',10);

end
