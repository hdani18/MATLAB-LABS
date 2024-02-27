# Image Processing
------
In this Repository I will demonstrates how can one apply various image pre-processing & image post-processing techniques in MATLAB environment. A digital image consists of picture elements, commonly known as pixels, where each pixel has a finite and discrete numerical representation for its intensity or gray level. These numerical values are generated from the output of two-dimensional functions, with the spatial coordinates denoted by x and y along the x-axis and y-axis, respectively.

------

### Color Image Processing
------

RGB2GRAY Function: Converts a color image into a grayscale image, simplifying image processing tasks and reducing computational complexity.

![Screen Shot 2024-02-27 at 4 59 44 PM](https://github.com/hdani18/MATLAB-LABS/assets/93953695/0a51dd1c-de53-44b7-a2ed-e0e6314a5f42)

RGB2HSV Function: Transforms a color image from the RGB color space to the HSV (Hue, Saturation, Value) color space. This conversion facilitates color-based image analysis and processing, providing separate channels for hue, saturation, and brightness components.

![Screen Shot 2024-02-27 at 5 02 00 PM](https://github.com/hdani18/MATLAB-LABS/assets/93953695/c074b2fe-0a26-4f10-be6f-d7ba370980f4)

RGB to NTSC Conversion Function: Converts the input RGB image to the NTSC color space, which separates the image into its luminance (Y) and chrominance (I and Q) components. The function displays both the NTSC image and its illuminance component. This conversion is useful for various image processing tasks, such as video compression and analysis.

![Screen Shot 2024-02-27 at 5 18 54 PM](https://github.com/hdani18/MATLAB-LABS/assets/93953695/b04942af-5e18-413f-aeee-123813f6c2cf)

Horizontal Flip Function: Performs a horizontal flip on the input image, reversing the order of pixels along the horizontal axis. This operation is commonly used in image processing for tasks such as data augmentation and mirroring.

![Screen Shot 2024-02-27 at 5 08 42 PM](https://github.com/hdani18/MATLAB-LABS/assets/93953695/03c12fcc-bea8-42e9-b5e7-69957883b78f)

Vertical Reflection Function: prompts the user to select an image file. It then reads the image and creates a vertically reflected version of the image by copying and flipping the original image's pixels along the vertical axis. The resulting reflected image is displayed alongside the original image.

![Screen Shot 2024-02-27 at 5 22 28 PM](https://github.com/hdani18/MATLAB-LABS/assets/93953695/1ed4a464-d214-41c6-967f-17f49217bed6)

------

### Histogram Processing
------

Histogram Plotting: This functions allows the user to select an image file, computes its grayscale histogram using the built-in imhist function, and displays both the original grayscale image and the histogram plot. Additionally, it is implemented using both the built-in MATLAB function and custom logic for computing the histogram.

![Plotting](https://github.com/hdani18/MATLAB-LABS/assets/93953695/2aa119ff-d44b-43e6-9a92-67fecb855b93)

Histogram Equalization: This functions performs histogram equalization on a selected image file, enhancing its contrast by redistributing pixel intensities. It first computes the histogram of the grayscale image using custom logic and then generates a new image with improved contrast. The result is compared visually through plots of the original grayscale image, its histogram, the histogram equalization process, and the resulting new image. Additionally, both built-in MATLAB functions and custom logic are implemented for histogram computation and equalization.

![hist_equi](https://github.com/hdani18/MATLAB-LABS/assets/93953695/4c80e168-5d51-449f-ace5-690b3a0ecaa5)

Histogram Matching: This functions facilitates histogram matching between two selected image files. It prompts the user to select an input and an output image, computes and plots their histograms, performs histogram matching, and displays the resulting new image alongside the originals. This functions integrates both inbuilt MATLAB functions and custom implementaion to achieve histogram matching.

![hist_match](https://github.com/hdani18/MATLAB-LABS/assets/93953695/f74c4507-dbcd-4062-a816-0a13c3520638)

------

### Smoothing Filters
------

Average Weighted Filter: This function implements a linear smoothing filter known as the Average Weighted Filter. It prompts the user to select an image file, reads the image, and applies the filter to smooth the image. The function utilizes a 3x3 mask with weights and performs convolution on the image. It then displays the original image, the padded image, and the result after filtering using the Average Weighted Filter.

Box Filter: This function implements a linear smoothing filter known as the Box Filter. It prompts the user to select an image file, reads the image, and applies the filter to smooth the image. The function utilizes a square mask of size 3x3 with all elements set to 1, indicating equal weights. It performs convolution on the image using this mask and then displays the original image, the padded image, and the result after filtering using the Box Filter.

Max Filter: This function implements a non-linear smoothing filter known as the Max Filter. It prompts the user to select an image file, reads the image, and applies the filter to enhance the image by emphasizing bright regions. The function utilizes a square mask of size 3x3, sliding it over the image to find the maximum pixel value within each local neighborhood. It then displays the original image, the padded image, and the result after filtering using the Max Filter.

Median Filter: This function implements a non-linear smoothing filter known as the Median Filter. It prompts the user to select an image file, reads the image, and applies the filter to remove noise from the image while preserving edges. The function utilizes a square mask of size 3x3, sliding it over the image to compute the median pixel value within each local neighborhood. It then displays the original image, the padded image, and the result after filtering using the Median Filter.

Min Filter: This function implements a non-linear smoothing filter known as the Min Filter. It prompts the user to select an image file, reads the image, and applies the filter to remove noise from the image while preserving edges. The function utilizes a square mask of size 3x3, sliding it over the image to compute the minimum pixel value within each local neighborhood. It then displays the original image, the padded image, and the result after filtering using the Min Filter.


![smoothing_filter_result](https://github.com/hdani18/MATLAB-LABS/assets/93953695/0d6e5b61-ef54-487b-bf35-1755d2b686bd)

------

### Morphological Operations
------

Logical and Arithmetic Operations: This function performs bitwise logical and arithmetic operations on a grayscale image. It prompts the user to select an image file, reads the image, converts it to grayscale, and generates a binary mask image representing two white rectangles placed over the eyes in the original image. It then performs bitwise logical and arithmetic operations between the grayscale image and the mask image, including bitwise AND, OR, addition, and subtraction. The function displays the original grayscale image, the mask image, and the results of each operation.

<img width="460" alt="Logical Operations" src="https://github.com/hdani18/MATLAB-LABS/assets/93953695/8d84e855-443c-4c70-b4a8-05ea99cd34b7">

Opening: This function performs morphological opening operation on a grayscale image. It prompts the user to select an image file, reads the image, and creates a circular structuring element with a disk shape and size of 10 pixels. The opening operation is then applied to the image using the structuring element, which helps in removing noise and small objects from the image. Finally, the function displays the original grayscale image and the resulting image after the opening operation.

![Opeaning](https://github.com/hdani18/MATLAB-LABS/assets/93953695/8a981ec4-7672-44f7-acfe-afe2d7bfbf84)

Closing: This function performs morphological closing operation on a grayscale image. It prompts the user to select an image file, reads the image, and creates a circular structuring element with a disk shape and size of 10 pixels. The closing operation is then applied to the image using the structuring element, which helps in closing small gaps and smoothing the boundaries of objects in the image. Finally, the function displays the original grayscale image and the resulting image after the closing operation.

![Closing](https://github.com/hdani18/MATLAB-LABS/assets/93953695/6606e2f4-7331-4a8a-b3e4-f999f7c4ca26)

Dilation: This function performs morphological dilation operation on a grayscale image. It prompts the user to select an image file, reads the image, and creates a square structuring element with a side length of 10 pixels. The dilation operation is then applied to the image using the structuring element, which expands the boundaries of bright regions in the image. Finally, the function displays the original grayscale image and the resulting image after the dilation operation.

![Dialation](https://github.com/hdani18/MATLAB-LABS/assets/93953695/d05642b2-689b-4a45-84e7-84a9aa501331)

Erosion: This function performs morphological erosion operation on a grayscale image. It prompts the user to select an image file, reads the image, and creates a square structuring element with a side length of 10 pixels. The erosion operation is then applied to the image using the structuring element, which shrinks the boundaries of bright regions in the image. Finally, the function displays the original grayscale image and the resulting image after the erosion operation.

![Erosion](https://github.com/hdani18/MATLAB-LABS/assets/93953695/ffd61696-f871-47f7-ba7c-be90286e368b)

------
