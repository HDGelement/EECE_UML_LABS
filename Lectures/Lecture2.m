MaxFib = input('Enter how many fibnacci Numbers you want \n');
fib = zeros(MaxFib, 1);
fib(1)=1;
fib(2)=1;
for index=3:MaxFib
        fib(index)=fib(index-1)+fib(index-2);
        display(index-1);
end

function [area, volume] = Sphere(radius)
volume = (4/3)*pi*radius^3;
area = 4 * pi * (radius^2);
end