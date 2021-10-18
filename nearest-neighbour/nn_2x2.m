function out = nn_2x2(f, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest-neighbour pe imaginea 2x2 f cu puncte
    % intermediare echidistante.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % 
    % Parametrii:
    % - f = imaginea ce se doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================
    
    % defineste coordonatele x si y ale punctelor intermediare
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;

    % Aflare numar de puncte
    n = length(x_int);
    x1 = y1 = 1;
    x2 = y2 = 2;

    % Parcurgere pixel cu pixel
    for i = 1 : n,
        for j = 1 : n,
            if  i <=n/2 && j<=n/2,
              out(i,j) = f(1,1);
            endif
            if  i <=n/2 && j>n/2,
              out(i,j) = f(1,2);
            endif
            if  i >=n/2 && j<=n/2,
              out(i,j) = f(2,1);
            endif
            if  i >=n/2 && j>n/2,
              out(i,j) = f(2,2);
            endif
        endfor
    endfor
endfunction
