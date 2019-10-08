%%part 1
f0 = 200;
t = 0:0.0001:10;
y = cos(2*pi*f0*t);

%a
SpectrumAnalyzer(y, 10000);
figure(2)
plot(t(1: (length(t))/200), y(1:(length(y)/200)), 'b-'); %% ty
soundsc(y, 10000);
hold on;

%b
f0 = 400;
y1 = cos(2*pi*f0*t);
figure(3)
plot(t(1:(length(t))/200), y1(1:(length(y1))/200), 'r-');
SpectrumAnalyzer(y1, 10000);
soundsc(y1, 10000);

%%part 2, y1 and y has been used
k = 1;
y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t);
figure(5)
plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g--');
for i = 1:10
    k = 1 + (i*2);
    fprintf("this is my number %0f \n" ,k);
    y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t);
    figure(k+2);
    plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g--');
    SpectrumAnalyzer(y2, 10000);
    movegui(figure(3 + (i*2)), 'east')
    movegui(figure(4 + (i*2)), 'west')
    fprintf("move me %0f \n", (((i-1)*2)+5));
    pause(5);
end