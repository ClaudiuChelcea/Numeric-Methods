function out = bilinear_2x2(f, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 f cu puncte intermediare
    % echidistante.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % 
    % Parametrii:
    % - f = imaginea ce se doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================

    %  coordonatele punctelor intermediare
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;

    % nr. de puncte
    n = length(x_int);
    x1 = y1 = 1;
    x2 = y2 = 2;

    % coeficientii de interpolare
    coeficienti = bilinear_coef(f,x1,y1,x2,y2);
    
    % parcurgea fiecarui pixel din imaginea finala
    for i = 1 : n
        for j = 1 : n
            % valoarea pixelului
            out(j,i) = coeficienti(1) + coeficienti(2) * x_int(i) + coeficienti(3) * y_int(j) + coeficienti(4) * x_int(i) * y_int(j);
        endfor
    endfor

    out = uint8(out);

endfunction
