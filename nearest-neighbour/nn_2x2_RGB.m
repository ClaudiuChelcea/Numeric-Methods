function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================
    
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    R_NEW = nn_2x2(R, STEP);
    G_NEW = nn_2x2(G, STEP);
    B_NEW = nn_2x2(B, STEP);
    
    % Creeaza imaginea finala
    out = cat(3,R_NEW,G_NEW,B_NEW);
    
endfunction
