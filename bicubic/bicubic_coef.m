function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================
      
    % TODO: calculeaza matricile intermediare
    MAT_1 = [ 1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
              
    MAT_2 = [ 1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1];
                
    MAT_MID = [f(y1, x1) f(y2, x1) Iy(y1, x1) Iy(y2, x1);
         f(y1, x2) f(y2, x2) Iy(y1, x2) Iy(y2, x2);
         Ix(y1, x1) Ix(y2, x1) Ixy(y1, x1) Ixy(y2, x1);
         Ix(y1, x2) Ix(y2, x2) Ixy(y1, x2) Ixy(y2, x2)];

    % TODO: converteste matricile intermediare la double   
    MAT_1 = double(MAT_1);
    MAT_2 = double(MAT_2);
    MAT_MID = double(MAT_MID);
    
    % TODO: calculeaza matricea finala
    A = MAT_1 * MAT_MID * MAT_2;
    

endfunction