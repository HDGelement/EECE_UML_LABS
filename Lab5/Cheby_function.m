n = input("Cheby: ");

fprintf("%i \n", Cheby(n));

function c = Cheby(n)
c0 = [1];
c1 = [1,0]; % initialization for Cheby(0) and Cheby(1)
i = 1; % initialization for loop control variable used in while loop
if n == 0
    disp(c0);
elseif n == 1
    disp(c1);
else
    ci2 = c0; % ci2 always represents Cheby(i-2)
    ci1 = c1; % now i = 1, ci1 always represents Cheby(i-1)
    % in the following loop, the program always computes Cheby(i)
    % as i increases, all the Chebyshev polynomials Cheby(2), Cheby(3)…are calculated
    % when i hits n, Cheby(n) is calculated.
    while i < n
        i = i + 1;
        ci = addpoly((2*[ci1, zeros(1, 1)]), (-1*ci2)); % now i increases, we calculate
        % new cheby(i) accordingly.
        % Hint: ci = 2x ci1 - ci2
        % you should utilize the “add” function implemented in Part B
        % and to multiply c(i-1) with 2x, multiply by 2 and append a zero at the right end.
        ci2 = ci1;
        ci1 = ci;
    end
    c = ci;
end
end

function p = addpoly(nomi1, nomi2)
polysize = size(nomi1, 2) - size(nomi2, 2);
    if polysize < 0
        nomi1 = [zeros(1, polysize) nomi1];
        p = nomi1 + nomi2;
    elseif polysize > 0
        nomi2 = [zeros(1, polysize) nomi2];
        p = nomi1 + nomi2;
    end 
end