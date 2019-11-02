%syms x; %needed for the one with coeff function used 
nomi1 = input("Input Coefficients with square brackets: "); %ask for the equation when using the easy way
nomi2 = input("Input Coefficients with square brackets: "); %ask for the equation when using the easy way

fprintf("debug this = %i %i\n", size(nomi1, 2) ,size(nomi2, 2));

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
polysize = size(nomi1, 2) - size(nomi2, 2);
    if polysize < 0
        nomi1 = [zeros(1, abs(polysize)) nomi1];
        p = nomi1 + nomi2;
    elseif polysize > 0
        nomi2 = [zeros(1, abs(polysize)) nomi2];
        p = nomi1 + nomi2;
    end
end