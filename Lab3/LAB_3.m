%%part 1
f0 = 200;
t = 0:0.0001:10;
y = cos(2*pi*f0*t);

%a - Create a 10 second time axis, sampling every 0.0001 seconds (Fs=10000 Hz)
%b - Create and plot about 10 cycles of y= cos (2*?*f0*t) where t is your time axis and
%f0 is 200 Hz
%this is both of them
SpectrumAnalyzer(y, 10000);
figure(2)
plot(t(1: (length(t))/200), y(1:(length(y)/200)), 'b-'); % they are matrices
soundsc(y, 10000);
hold on;

%c - Create another sinusoid at the second harmonic of the sinusoid (400Hz). Plot it on
%the same graph as the first, and play it using your sound card
f0 = 400;
y1 = cos(2*pi*f0*t);
figure(3)
plot(t(1:(length(t))/200), y1(1:(length(y1))/200), 'r-');
SpectrumAnalyzer(y1, 10000);
soundsc(y1, 10000);

%%part 2, y1 and y has been used, - Create a square wave from the sinusoids, after each step plot a small section, and run
%the spectrum Analyzer function.
k = 1;
y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t);
figure(5)
plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g--');

for i = 1:10
    k = 1 + (i*2);
    fprintf("this is my number %0f \n" ,k); %debugging
    y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t); % you dont need
    figure(k+2);
    plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g-');
    SpectrumAnalyzer(y2, 10000);
    movegui(figure(3 + (i*2)), 'east') % you dont need
    movegui(figure(4 + (i*2)), 'west') % you dont need
    fprintf("move me %0f \n", (((i-1)*2)+5)); % you dont need 
    soundsc(y2, 10000)
    %pause(5);
end

%part 3 WHOLY SHIT;;;;;;;;;;END MY SUFFERING PLEASE
%REEEEEEEEEEEEEEEEEEEEEEEZZZZ
Fs = 10000;
y3=filter(Num,1,y2); %% y2 = squarewave
plot(t(1:500), y3(1:500), 'r--');
soundsc(y3, 10000)

%%part 4 yes my guy, END MY SUFFERING
SpectrumAnalyzer(y3, 10000)
soundsc(y3, 12000); % im scared shitless
y3 = filter(Num,1,y3);
plot(t(1:500), y3(1:500));
SpectrumAnalyzer(y3, 12000);
%you suck
%DONE 