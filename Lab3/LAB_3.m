%%part 1
f0 = 200;
t = 0:0.0001:10;
y = cos(2*pi*f0*t);

%a
SpectrumAnalyzer(y, 10000);
figure(2)
plot(t(1: 500), y(1:500), 'b-'); %% ty
soundsc(y, 10000);
hold on;

%b
f0 = 400;
y1 = cos(2*pi*f0*t);
figure(3)
plot(t(1:500), y1(1:500), 'r-');
SpectrumAnalyzer(y1, 10000);
soundsc(y, 10000);

%%part 2, y1 and y has been used
k = 3;
y2 = sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t);
%%plot(t, y1, 'bl');