image = rgb2gray(imread("cat.jpg"));

blocks = reshape(double(image),8,8,[]);

N = 8;
for i = 1:length(blocks)
    block = blocks(:,:,i);
    block = dct(block);
    %block = fft(block);
    block = floor(block./N).*N;
    block = idct(block);
    %block = ifft(block);
    blocks(:,:,i) = block;
end

blocks = reshape(uint8(blocks),160,160);

imshow(blocks);

