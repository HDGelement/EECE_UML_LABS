%%part 1
f0 = 200;
t = 0:0.0001:10;
y = cos(2*pi*f0*t);

%a - Create a 10 second time axis, sampling every 0.0001 seconds (Fs=10000 Hz)
%b - Create and plot about 10 cycles of y= cos (2*?*f0*t) where t is your time axis and
%f0 is 200 Hz
%this is both of them
SpectrumAnalyzer(y, 10000); % plot 1
figure(2)
plot(t(1: (length(t))/200), y(1:(length(y)/200)), 'b-'); % they are matrices, plot 2
soundsc(y, 10000);
hold on;

%c - Create another sinusoid at the second harmonic of the sinusoid (400Hz). Plot it on
%the same graph as the first, and play it using your sound card
f0 = 400;
y1 = cos(2*pi*f0*t);
figure(3)
plot(t(1:(length(t))/200), y1(1:(length(y1))/200), 'r-'); %plot 3
SpectrumAnalyzer(y1, 10000); %plot 4
soundsc(y1, 10000);

%%part 2, y1 and y has been used, - Create a square wave from the sinusoids, after each step plot a small section, and run
%the spectrum Analyzer function.
k = 3;
y2 = y + sin((k * (pi / 2)) / k)*cos(k * 2 * pi * f0 * t);
figure(5)
plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g--'); %plot 5

for i = 1:10
    k = 1 + (i*2);
    fprintf("this is my number %0f \n" ,k); %debugging you dont need
    y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t); 
    figure(k+2);
    plot(t(1:(length(t))/200), y2(1:(length(y2))/200), 'g');
    SpectrumAnalyzer(y2, 10000);
    movegui(figure(3 + (i*2)), 'east') % you dont need
    movegui(figure(4 + (i*2)), 'west') % you dont need
    fprintf("move me %0f \n", (((i-1)*2)+5)); % you dont need 
    soundsc(y2, 10000);
    pause(5);
end

%{ 
%method number two for part b or part 2
for k = 1:2:21 
    fprintf("k = %0f \n ", k)
    y2 = y + sin((k * pi / 2) / k)*cos(k * 2 * pi * f0 * t);
    figure(k);
    plot(t(1:500), y2(1:500));
    SpectrumAnalyzer(y2, 10000);
end
%}

%part 3 
Fs = 10000;
y3=filter(Num,1,y2);
plot(t(1:500), y3(1:500), 'r--');
soundsc(y3, 10000)

%%part 4 
load handel
SpectrumAnalyzer(y, Fs);
figure(420);
plot(t(1:500), y(1:500), 'g');
soundsc(y, Fs)
%SpectrumAnalyzer(y, 10000)
soundsc(y, 12000); %Scary Sound
y = filter(Num1bad,1,y);
plot(t(1:500), y(1:500));
SpectrumAnalyzer(y, 12000);
%DONE 