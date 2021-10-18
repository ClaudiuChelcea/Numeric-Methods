# Chelcea Claudiu-Marian, 312CA

Tasks:
1. Nearest_neighbours:
Am implementat functia nn_2x2 pe care am aplicat-o in continuare pentru
nn_2x2_RGB pe fiecare canal in parte, unind cele trei matrici rezultate
prin functia cat.
Pentru resize, pe baza factorilor de scalare am creat matricea de
transformare si inversa ei, apoi am aplicat pe fiecare punct
transformarea, am gasit vecinul cel mai apropiat si am salvat
rezultatul in matricea de output. Pentru RGB am aplicat aceasta
functie pentru fiecare canal, dupa care am returnat matricea finala.

2. Bilinear:
Pentru bilinear_2x2_RGB am folosit de trei ori bilinear_2x2, folosindu-ma
de formula polinomului construit cu coeficientii functiei bilinear_coef.
De asemenea, toate functiile RGB consta in aplicarea functiei individuale
pe fiecare canal, urmand unirea matricilor create.
Aceste functii, resize si rotate, au fost implementate dupa cum
indica skeletul si pe baza informatiilor din pdf.
Ultima functie, surrounding_points returneaza vecinii unui punct
avand grija ca acesta sa nu depaseasca marginile imaginii.

3. Bicubic:
Am realizat cele 3 derivate si le=am aplicat pe fiecare punct din I de cate
trei ori, in functie de necesitate, pentru a afla Ix, Iy si Ixy in functia
precalc.
Functia surrounding_points ramane aceeasi ca la taskul anterior.
Pentru bilinear_coef am definit matricile necesare pe care le-am inmultit
imediat dupa ce am facut comversia in tipul de date double.
Resize-ul RGB se rezuma la aplicarea resize-ului creat pe fiecare canal.