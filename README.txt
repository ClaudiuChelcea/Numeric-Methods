# Chelcea Claudiu-Marian

Tasks:
# 1. Nearest_neighbours:
I implemented the nn_2x2 function that I further applied for
nn_2x2_RGB on each channel separately, joining the three resulting matrices
by the function cat.
For resize, based on the scaling factors we created the transform matrix and it's
inverse, then I applied on each point the transformation, found the nearest neighbor and saved
the result in the output matrix. For RGB I applied this
function for each channel, after which I returned the final matrix.

# 2. Bilinear:
For bilinear_2x2_RGB I used bilinear_2x2 three times, using
the polynomial formula constructed with the coefficients of the bilinear_coef function.
Also, all RGB functions consist of the application of the individual function
on each channel, followed by the concatenation of the created matrices.
The last function, surround_points returns the neighbors of a point
taking care that it does not exceed the edges of the image.

# 3. Bicubic:
I made the 3 derivatives and applied them on each point of 'I'
three times, as needed, to find Ix, Iy and Ixy in the function
'precalc'.
The surround_points function remains the same as in the previous task.
For bilinear_coef, we defined the necessary matrices that we multiplied
immediately after I made the conversion to the double data type.
RGB resize is the application of the resize created on each channel.
