Duration;
NumberInput;
btime=0:0.0001:0.05;
blank=sin(2*pi*btime);
seqlength=size(digitsequence,2);
i=1;
output1=[]; 
while i<=seqlength
    outputi=[output1 Tone(digitsequence(i),duration) blank];
    output1=outputi;
    i=i+1; 
end
out=outputi;
sound(out,10000);
pause((size(digitsequence,2)*(duration+0.05))+1);
RingandBusy;