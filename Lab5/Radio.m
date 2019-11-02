t = 0:0.0001:10;
f = 1000;
z = cos(2 * pi * 1000 * t); % sin((2)*(pi)*(frequency)*(time));
figure(1)
plot(t(1: (length(t))/200), z(1:(length(z)/200)), 'b-');
movegui(figure(1), 'west') % you dont need
figure(2)
SpectrumAnalyzer(z, f);
movegui(figure(2), 'east') % you dont need

sin1 = cos(2 * pi * 100 * t);
figure(3)
plot(t(1: (length(t))/200), sin1(1:(length(sin1)/200)), 'b-');
movegui(figure(3), 'west');
figure(4)
SpectrumAnalyzer(sin1,100);
movegui(figure(4), 'east');

am = (1+sin1).*z;
figure(5)
plot(t(1: (length(t))/200), am(1:(length(am)/200)), 'b-');
movegui(figure(5), 'west');
figure(6)
SpectrumAnalyzer(am, 10000);
movegui(figure(6), 'east');


%this is just some Curious Code, i was curious how it would sound 
%{
count = 1000;

audioplayer(am, 10000);
player audioplayer(am, count);
while count > 0
    play(player);
end 
%}

co_am = am.*z;
figure(7)
plot(t(1: (length(t))/200), co_am(1:(length(co_am)/200)), 'b-');
movegui(figure(7), 'west');
figure(8)
SpectrumAnalyzer(co_am, 10000);
movegui(figure(8), 'east');
soundsc(co_am, 10000);

am2 = filter(Num,1,co_am);
figure(9)
plot(t(1000: (length(t))/50), am2(1000:(length(am2)/50)), 'b-');
movegui(figure(9), 'west');
figure(10)
SpectrumAnalyzer(am2, 10000);
movegui(figure(10), 'east');
soundsc(am2, 10000)

am3 = abs(am);
am3 = filter(Num,1,am3);
figure(11)
plot(t(1000: (length(t))/50), am3(1000:(length(am3)/50)), 'b-');
movegui(figure(11), 'west');
figure(12)
SpectrumAnalyzer(am3, 10000);
movegui(figure(12), 'east');
soundsc(am3, 10000);

am4 = filter(Num,1,am3);

while am4 ~= am3
    n = n + 1
    am4 = filter(Num, 1, am3);
    am3 = am4
end


figure(13)
plot(t(1000: (length(t))/50), am4(1000:(length(am4)/50)), 'b-');
movegui(figure(13), 'north');
figure(14)
SpectrumAnalyzer(am4, 10000);
movegui(figure(14), 'south');
soundsc(am4, 10000);





