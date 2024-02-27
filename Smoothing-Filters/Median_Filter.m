function new_img = Median_Filter() 
    
    %%
    % Non Linear Smoothing Filter
    %
    % Median Filter
    %
    % Define Odd Mask Size 3,5,7,....
    m_size = 3;
    
    % replace `PATH_TO_IMAGE_FILE` with actual image file path
    % Use uigetfile to interactively select an image file
    [filename, pathname] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an Image File');
    if filename == 0
        disp('User canceled the operation.');
        return;
    end
    impath = fullfile(pathname, filename);

    % read image
    img = imread(impath);
    
    % Convert BGR image to GRAY Scale Image (optional)
    % img = rgb2gray(img);
    
    s = m_size/2-0.5;
    
    % Pad The Given Image
    [nr,nc]=size(img);
    padded_img = uint8(zeros(nr+2*s,nc+2*s));
    padded_img((s+1):(nr+s),(s+1):(nc+s)) = img;
    
    % Plot Result 
    subplot(1,3,1),imshow(img);
    title('Original Gray Image','FontSize',10);
    subplot(1,3,2),imshow(padded_img);
    title('Padded Image','FontSize',10);
    
    % Convert uint8 to double
    padded_img=double(padded_img);
    
    % Find Size of Padded Image
    [pnr,pnc]=size(padded_img);

    new_img = zeros(nr,nc);
    
    for i = (1+s):(nr+s)
      for j = (1+s):(nc+s)
        
        new_img(i-s,j-s) = median(median(padded_img(i-s:i+s,j-s:j+s)));
        
      end
    end

    subplot(1,3,3),imshow(uint8(new_img));
    title('Median Filter','FontSize',10);
    
end
