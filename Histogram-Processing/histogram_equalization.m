function [res] = histogram_equalization()
  
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
  
  % Find dimensions of image
  [nr, nc] = size(imggray);
  
  % Generate Count array having count of pixels
  arr = zeros(1,256);
  for i = 1:nr
      for j = 1:nc
        arr(imggray(i,j)+1) = arr(imggray(i,j)+1) + 1;
      end
  end

  nk = arr;
  pk = zeros(1,256);
  res = zeros(1,256);
  sk = zeros(1,256);
  imgnew = imggray;
  
  % Find total number of pixels 
  n = sum(sum(nk));
  
  % Generate histogram equalization table
  for i = 1:256
    pk(i) = nk(i) / n;
    if i > 1
      sk(i) = sk(i-1) + pk(i);
    else
      sk(1) = pk(1);
    end
    ans(i) = round(255 * sk(i));
    res(ans(i)+1) = res(ans(i)+1) + nk(i);
  end
  
  % Generate a new image
  for i = 1:nr
      for j = 1:nc
        imgnew(i,j) = ans(imggray(i,j)+1);
      end
  end
  
  % Plot the inputs & outputs
  subplot(2,2,1), imshow(imggray);
  title('Gray Image');
  subplot(2,2,3), bar(0:255, arr, 1);
  title('Histogram Plot');
  subplot(2,2,4), bar(0:255, res, 1);
  title('Histogram Equalization');
  subplot(2,2,2), imshow(imgnew);
  title('New Image');

end
