function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % Extragere canale
    R = img(:,:,1);
    G = img(:,:,2);  
    B = img(:,:,3);

    % Aplicare resize pe fiecare canal
    R_NEW = bicubic_resize(R, p, q);
    G_NEW = bicubic_resize(G, p, q);
    B_NEW = bicubic_resize(B, p, q);
    
    % Imagine finala
    out = cat(3, R_NEW, G_NEW, B_NEW);

endfunction