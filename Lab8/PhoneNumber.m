Duration;
NumberInput;
btime=0:0.0001:0.05;
blank=sin(2*pi*btime);
seqlength=size(digitseq,2);
i=1;
output1=[]; 
while i<=seqlength
    outputi=[output1 Tone(digitseq(i),dur) blank];
    output1=outputi;
    i=i+1; 
end
out=outputi;
sound(out,10000);
pause((size(digitseq,2)*(dur+0.05))+1);
RingandBusy;