function tone=Tone(digit,duration)
t=0:0.0001:duration;
LowT1= sin(2*pi*697*t);
LowT2= sin(2*pi*770*t);
LowT3= sin(2*pi*852*t);
LowT4= sin(2*pi*941*t);
HighT1= sin(2*pi*1209*t);
HighT2= sin(2*pi*1336*t);
HighT3= sin(2*pi*1477*t);
if digit==1
    tone=LowT1+HighT1;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==2
    tone=LowT1+HighT2;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==3
    tone=LowT1+HighT3;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==4
    tone=LowT2+HighT1;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==5
    tone=LowT2+HighT2;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==6
    tone=LowT2+HighT3;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==7
    tone=LowT3+HighT1;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==8
    tone=LowT3+HighT2;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==9
    tone=LowT3+HighT3;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
elseif digit==0
    tone=LowT4+HighT2;
    plot(t(1: (length(t))/50), tone(1:(length(tone)/50)), 'b-');
else
    tone=0;
end
end