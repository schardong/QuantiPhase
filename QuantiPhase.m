%QUANTIPHASE Area fractions by Linear Analysis of Intensity level
%Histograms
%
%TODO: Explain the function. H * a = b -> a = H^-1 * b.
%@h: The original histogram of the image.
%@hs: The vector of sample histograms of the objects on the image.
%@returns: The vector with the estimated areas of the objects on the image.

function a = QuantiPhase(h, hs)
    [~, y] = size(hs);
    H = zeros(y, y);
    b = zeros(y, 1);
        
    for i = 1:y
        for j = 1:y
            H(i, j) = dot(hs(1:256, i), hs(1:256, j));
        end
        b(i) = dot(h, hs(1:256, i));
    end

    invH = H \ eye(y);
    a = invH * b;
    lambda = (sum(a) - 1) / sum(sum(invH));
    
    for i = 1:y
        a(i) = a(i) - lambda * sum(invH(i, 1:y));
    end

    return;