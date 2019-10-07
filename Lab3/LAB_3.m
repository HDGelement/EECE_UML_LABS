%%part 1
f0 = 200;
t = 0:0.0001:10;
y = (2*pi*f0*t); 

%a
SpectrumAnalyzer(y, 10000);
figure(1)
plot(t, y, '.');
soundsc(y, 10000);
hold on;

%b
f0 = 400;
plot(t, y, 'r--');
xlabel('Time');
ylabel('Power');
title('Plotted Wave Graph')
SpectrumAnalyzer(y, 10000);
soundsc(y, 10000);

