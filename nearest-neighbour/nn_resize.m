
function R = nn_resize(I, p, q)
    % =========================================================================
    % Upscaling de imagine folosind algoritmul de interpolare nearest-neighbour
    % Transforma imaginea I din dimensiune m x n in dimensiune p x q
    % =========================================================================
    [m n nr_colors] = size(I);

    % ignora imagini care nu sunt alb negru
    if nr_colors > 1
        R = -1;
        return
    endif
    
    I = double(I);
    R = zeros(p, q);

    % Obs:
    % Atunci cand se aplica o scalare, punctul (0, 0) al imaginii nu se va
    % deplasa.
    % In Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza in indici de la 1 la n si se inmulteste x si y cu s_x
    % si s_y, atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici in intervalul de la 0 la n - 1!

    % Factori de scalare
    s_x = (q-1) / (n-1);
    s_y = (p-1) / (m-1);
    
    % Obs: daca se lucreaza cu indici in intervalul [0, n - 1], ultimul
    % pixel al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n

    % Matricea de transformare si inversa ei
    T = [s_x 0; 0 s_y];
    T_inv = inv(T);
    
    % parcurge fiecare pixel din imagine
    % foloseste coordonate de la 0 la n - 1
    for y = 0 : p - 1
        for x = 0 : q - 1
            % Apliicare transformare
            transf = T_inv * [x;y];
            x_p = transf(1);
            y_p = transf(2);

            % Trecere in sistem 1-n
            x_p = x_p + 1;
            y_p = y_p + 1;

            % Vecin
            x_p = round(x_p);
            y_p = round(y_p);

            % Valoarea pixelului din imaginea finala
            R(y+1,x+1) = I(y_p, x_p);
        endfor
    endfor

    R = uint8(R);

endfunction
