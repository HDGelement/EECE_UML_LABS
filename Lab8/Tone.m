function tone=Tone(digit,duration) %gets corressponding frequency for each tone.
t=0:0.0001:duration;
Lowt1= sin(2*pi*697*t);
Lowt2= sin(2*pi*770*t);
Lowt3= sin(2*pi*852*t);
Lowt4= sin(2*pi*941*t);
HighT1= sin(2*pi*1209*t);
HighT2= sin(2*pi*1336*t);
HighT3= sin(2*pi*1477*t);
%for i = 1:500 % used to debug the best scale based on personal prefrence
    scale = 75;
if digit==1
    tone=Lowt1+HighT1;
    figure(1)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==2
    tone=Lowt1+HighT2;
    figure(2)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==3
    tone=Lowt1+HighT3;
    figure(3)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==4
    tone=Lowt2+HighT1;
    figure(4)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==5
    tone=Lowt2+HighT2;
    figure(5)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==6
    tone=Lowt2+HighT3;
    figure(6)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==7
    tone=Lowt3+HighT1;
    figure(7)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==8
    tone=Lowt3+HighT2;
    figure(8)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==9
    tone=Lowt3+HighT3;
    figure(9)
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
elseif digit==0
    figure(10)
    tone=Lowt4+HighT2;
    plot(t(1: (length(t)/scale)), tone(1:(length(tone))/scale), 'b-');
    xlabel(num2str(scale));
else
    tone=0;
end
%end
end