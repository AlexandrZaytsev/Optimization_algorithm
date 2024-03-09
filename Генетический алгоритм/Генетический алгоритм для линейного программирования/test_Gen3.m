M = 2000;
M_c = 1000 ;
L = 5000;

%1
a = eye(4).';
b = [1, 2, 3, 4];
c = [1, 1, 1, 1];
int = [1, 3];
[funct_value, coords, num_op] = Genetic_algorithm_3(M, M_c, L, a, b, c, int);
disp(b)
disp(coords.')



%2
a = [57 3 29 47 71; 12 17 31 6 73; 5 43 37 59 79; 7 5 41 61 9; 11 23 43 67 11];
b = [29 77 91 59 97];
c = [15 31 27 53 10];
int = [5];
lin_coords = intlinprog(-c, int, a.', b , [], [] , zeros(5, 1));
[funct_value, coords, num_op] = Genetic_algorithm_3(M, M_c, L, a, b, c, int) ;
disp(lin_coords.')
disp(coords.')



%3
a = [436 23 35; 58 232 223; 346 75 35; 83 12 97];
b = [2000 2000 2000];
c = [120 240 110 99];
int = [4];

lin_coords = intlinprog(-c, int, a.', b ,[], [] , zeros(3, 1));
[funct_value, coords, num_op] = Genetic_algorithm_3(M, M_c, L, a, b, c, int)  ;
disp(lin_coords.')
disp(coords.')


