%%A.) Consider the 6 arrays

a = 3;
b = [2 3];
c = [5;1];
d = [1 2;3 4];
e = [1 3;2 4];
f = eye(2);

%%B.) Debugging & Breakpoints

g = a * b;
h = a * d;
k = b * c;
l = c * b;
m = b .* c;
n = d * e;
n1 = e .* d;
n2 = d .* e;
n3 = b * d;
%N = d * b instead of * you need to use .* for matrix muiltiplication
M = a * e;
O = e * a;
p = e .* a;
q = e * f;

%%C.) Colon Operator

odd_up = (1:2:100);
odd_down = (99:-2:1);
minus_one = cos(pi*odd_up);
plus_minus = (-1).^(2:51);

%%D.) 
x = 1: .1: 12;
y = exp(sin(x));
plot (x,y,'g-*'); 
hold on;
y=exp(cos(x));
plot(x,y,'r-');
title('2D Graphics');
xlabel('The X axis');
ylabel('The Y axis');
figure(1);
hold off;


%2.) A.) Volume of a Cylinder
radius = input('radius : ');
height = input('height : ');
v = vol(radius, height);
fprintf("Volume = %.5f \n", v);
a = area(radius, height);
fprintf("Area = %.5f \n", a);

figure(2)
x = [-6 -6 -7 0 7 6 6 -3 -3 0 0 ; -7 2 1 8 1 2 -7 -7 -2 -2 -7];
plot(x(1,:),x(2,:),'r.')

hold on; 

A1= [0.5, 0 ; 0, 1]
A2= [1, 0 ; 0, 0.5]
A3= [0, 1 ; 0.5, 0]
A4= [0.5, 0 ; 0, -1]

A1x = A1 * x;
A2x = A2 * x; 
A3x = A3 * x;
A4x = A4 * x;

plot((A1x),(A2x),(A3x),(A4x), 'r.-');
hold on;

plot(x(1,:),x(2,:),'g');
hold off;

%Volume of a Cylinder
function [v] = vol(radius, height)
    v = pi * radius^2 * height;
end

%4.)Area of a Cylinder
function [a] = area(radius, height)
    a = (2*pi*radius^2) + (2*pi*radius*height);
end
