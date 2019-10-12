f0=200;
Fs=10000;
time=0:1/Fs:5;
cos200=cos(2*pi*f0*time);
k=1;
square=(1/k)*sin(pi*k/2)*cos(2*pi*f0*time*k);
for k=3:2:21
    square=square+(1/k)*sin(pi*k/2)*cos(2*pi*f0*time*k);
plot(time(1:1000),square(1:1000));
end
% now filter back to sine
newsin=filter(Num,1,square);
plot(time(2000:3000),newin(2000:3000));

