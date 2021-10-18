function out = bilinear_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % Extragere canale
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    % aplicarea functii nn pe cele 3 canale ale imaginii
    NEW_R = bilinear_resize(R, p, q);
    NEW_G = bilinear_resize(G, p, q);
    NEW_B = bilinear_resize(B, p, q);

    % Imaginea finala
    out = cat(3,NEW_R,NEW_G,NEW_B);
endfunction