function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
 
    % Derivata in x si y
     r = (f(y-1,x-1) + f(y+1,x+1) - f(y-1,x+1) - f(y+1,x-1)) / 4;
    
endfunction