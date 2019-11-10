function tn=Tone(digit,duration) %gets corressponding frequency for each tone.
t=0:0.0001:duration;
Lowt1= sin(2*pi*697*t);
Lowt2= sin(2*pi*770*t);
Lowt3= sin(2*pi*852*t);
Lowt4= sin(2*pi*941*t);
HighT0= sin(2*pi*1209*t);
HighT1= sin(2*pi*1336*t);
HighT2= sin(2*pi*1477*t);
%for i = 1:500 % used to debug the best scale based on personal prefrence
    scale = 75;
if digit==1
    tn=Lowt1+HighT0;
    figure(1)
    movegui(figure(1), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(2), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==2
    tn=Lowt1+HighT1;
    figure(3)
    movegui(figure(3), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(4), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==3
    tn=Lowt1+HighT2;
    figure(5)
    movegui(figure(5), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(6), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==4
    tn=Lowt2+HighT0;
    figure(7)
    movegui(figure(7), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(8), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==5
    tn=Lowt2+HighT1;
    figure(9)
    movegui(figure(9), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(10), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==6
    tn=Lowt2+HighT2;
    figure(11)
    movegui(figure(11), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(12), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==7
    tn=Lowt3+HighT0;
    figure(13)
    movegui(figure(13), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(14), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==8
    tn=Lowt3+HighT1;
    figure(15)
    movegui(figure(15), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(16), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==9
    tn=Lowt3+HighT2;
    figure(16)
    movegui(figure(16), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(17), 'west')
    SpectrumAnalyzer(tn, 10000)
elseif digit==0
    figure(18)
    tn=Lowt4+HighT1;
    movegui(figure(18), 'east')
    plot(t(1: (length(t)/scale)), tn(1:(length(tn))/scale), 'b-');
    xlabel(num2str(scale));
    movegui(figure(19), 'west')
    SpectrumAnalyzer(tn, 10000)
else
    tn=0;
end
%end
end