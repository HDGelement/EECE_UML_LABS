Duration;
NumberInput;
blanktime=0:0.0001:0.05;
blank=sin(2*pi*blanktime);
sequencelength=size(digitsequence,2);
i=1;
output1=[]; 
while i<=sequencelength
    outputi=[output1 Tone(digitsequence(i),duration) blank];
    output1=outputi;
    i=i+1; 
end
output=outputi;
sound(output,10000);
pause((size(digitsequence,2)*(duration+0.05))+1);
Ring_and_Busy;