function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % Extragere canale
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    % Applicare rotatie pe canale
    R_rotated = bilinear_rotate(R, rotation_angle);
    G_rotated = bilinear_rotate(G, rotation_angle);
    B_rotated = bilinear_rotate(B, rotation_angle);

    % Imagine finala
    out = cat(3,R_rotated,G_rotated,B_rotated);
    
endfunction