%syms x; %needed for the one with coeff function used 
nomi1 = input('Polynomial 1: ');
nomi2 = input('Polynomial 2: ');

p = addpoly(nomi1, nomi2);

fprintf("p = %i\n", p);

%{
function p = addpoly(nomi1, nomi2) %the easy way
    syms x;
    a = coeffs(nomi1);
    b = coeffs(nomi2);
    p = a + b;
end
%}

function p = addpoly(nomi1, nomi2)
    
end