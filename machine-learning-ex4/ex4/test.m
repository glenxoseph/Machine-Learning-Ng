image = imread("test.jpeg");

image_unroll = [image(:)];

for i = 1 : size(image_unroll)
  if image_unroll(i) >= 240
    image_unroll(i) = 0;
  elseif image_unroll(i) < 240
    image_unroll(i) = 1;
  end
endfor

image = reshape(image_unroll, 20, 20);
