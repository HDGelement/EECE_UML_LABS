Fs=10000;
f0=200;
k=1;
time=0:1/Fs:10;
Num = 0;
square=(1/k)*sin(k*pi/2)*cos(2*pi*k*f0*time);
for k=3:2:21
   square=(1/k)*sin(k*pi/2)*cos(2*pi*k*f0*time);
   plot(time(1:1000),square(1:1000))
end
fulteredsine=filter(Num,1,squarewave);
plot(time(2000,3000),filteredsine(2000,3000));