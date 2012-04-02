I = imread('imgs/Escura1.tif');

h = imhist(I);    %Histogram of the whole image.
h = h ./ sum(h);  %Area fractions of each gray level.

%Test 1 setup.
h1 = imhist(I(1:300, 1:100));
h2 = imhist(I(1:300, 101:300));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1, h2])  %Test 1.

%Test 2 setup.
h1 = imhist(I(1:30, 1:80));
h2 = imhist(I(1:30, 101:180));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1, h2])  %Test 2.

%Test 3 setup.
h1 = imhist(I(16:123, 7:83));
h2 = imhist(I(78:232, 198:256));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1, h2])  %Test 3.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I = imread('imgs/ruido12.tif');

h = imhist(I);    %Histogram of the whole image.
h = h ./ sum(h);  %Area fractions of each gray level.

%Test 1 setup.
h1 = imhist(I(1:300, 1:150));
h2 = imhist(I(1:300, 151:300));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1 h2])   %Test 1.

%Test 2 setup.
h1 = imhist(I(1:30, 1:80));
h2 = imhist(I(1:30, 151:230));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1, h2])  %Test 2.

%Test 3 setup.
h1 = imhist(I(16:123, 7:83));
h2 = imhist(I(78:232, 198:256));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);

QuantiPhase(h, [h1, h2])  %Test 3.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I = imread('imgs/ruido123.tif');

h = imhist(I);
h = h ./ sum(h);

h1 = imhist(I(1:80, 30:90));
h2 = imhist(I(15:90, 190:250));
h3 = imhist(I(190:230, 1:160));

h1 = h1 ./ sum(h1);
h2 = h2 ./ sum(h2);
h3 = h3 ./ sum(h3);

QuantiPhase(h, [h1 h2 h3])