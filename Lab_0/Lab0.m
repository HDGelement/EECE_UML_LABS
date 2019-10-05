
%Arithmetic Operations
ans_1a1 = (2^5)/(2^5 - 1);
ans_1b = (3*(sqrt(5)-1))/((sqrt(5)+1)^2)-1;
ans_1c = pi*((nthroot(pi, 3)-1)^2);

%Exponential and Logarithms
ans_2a1 = exp(3);
ans_2a2 = log(exp(3));
ans_2a3 = log10(exp(3));
ans_2a4 = log10(10^5);
ans_2b = exp(pi*sqrt(163));
ans_2b1 = (log(17))/(log(3));

%Trigonometry 
ans_3a1 = sin(pi/6);
ans_3a2 = cos(pi);
ans_3a3 = tan(pi/2);
ans_3b = sin(pi/6)^2 + cos(pi/6)^2;
x = 32 * pi; y = ((cosh(x)^2) - (sinh(x)^2));

%Complex Numbers
ans_4a = (1+3i)/(1-3i);
ans_4b = exp(1i*pi/4);
ans_4c1 = exp(pi/2*1i); %in this problem you are explicitly telling the compiler to muiltiply 2 by imaginary
ans_4c2 = exp(pi/2i); %in this problem you are implicitly asking it to muiltiply 2 and i

%Equation of a Straight Line
m = 0.5;
c = -2;
x = [0 1.5 3 4 5 7 9 10];
form_sLine = (m*x) + c;

%Muiltiply, divide and exponentiate vectors
t = (1:1:10);
x1 = t .* sin(t);
y1 = (t-1)./(t+1);
z = (sin(t.^2))./(t.^2);

%Points on a Circle
r = 2;
theta = [0 pi/4 pi/2 (3 * pi)/(4) pi (5 * pi)/(4)];
x2 = r * cos(theta);
y2 = r * sin(theta);
r1 = sqrt(y2.^2 + x2.^2);
if r == r1
    fprintf('radius is constant \n');
else 
    fprintf('radius is not constant \n');
end

%The Geometric Series 
n = (1:11);
r3 = 0.10;
x3 = r.^n;
s = sum(x);
r4 = 0.50; x4 = r4.^n; s2 = sum(x);
r5 = 0.100; x5 = r5.^n; s3 = sum(x);

%Matrices and Vector
v = 0:0.2:12;
m = [sin(v);cos(v)];
size(m);
size(v);
m(:,1:10)';
v(:,1:10)';

