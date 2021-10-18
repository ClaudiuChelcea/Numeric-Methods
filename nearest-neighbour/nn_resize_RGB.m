function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % Extragere canale
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    % Gasire valori noi
    R_NEW = nn_resize(R, p, q);
    G_NEW = nn_resize(G, p, q);
    B_NEW = nn_resize(B, p, q);
    
    % Imaginea finala
    out = cat(3,R_NEW,G_NEW,B_NEW);

endfunction
