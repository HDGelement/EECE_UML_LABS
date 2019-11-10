twosec = 0:0.0001:2; 
ringingtn = sin(2*pi*440*twosec)+sin(2*pi*480*twosec);
forsec = 0:0.0001:4;
forsecp = sin(2*pi*forsec);
totalr = [ringingtn forsecp ringingtn forsecp];
sound(totalr,10000)
pause(10)
halfsec = 0:0.0001:0.5; 
halfsecpause = sin(2*pi*halfsec);
busytone = sin(2*pi*480*halfsec)+sin(2*pi*620*halfsec);
total_busytone = [busytone halfsecpause busytone halfsecpause busytone];
busy=randi([0 1],1);
if busy == 1
    sound(total_busytone,10000) 
    pause(3)
else
end
for i = 1:500
    twelvesec = (2.*forsec) + (2.*twosec);
    scale = i;
    plot(twelvesec(1: (length(twelvesec)/scale)), totalr(1:(length(totalr))/scale), 'b-');
    plot(twelvesec(1: (length(twelvesec)/scale)), total_busytone(1:(length(total_busytone))/scale), 'b-');
end