twosec=0:0.0001:2; 
ringingtone=sin(2*pi*440*twosec)+sin(2*pi*480*twosec);
foursec=0:0.0001:4;
foursecpause=sin(2*pi*foursec);
total_ring=[ringingtone foursecpause ringingtone foursecpause];
sound(total_ring,10000)
pause(10)
halfsec=0:0.0001:0.5; 
halfsecpause=sin(2*pi*halfsec);
busytone=sin(2*pi*480*halfsec)+sin(2*pi*620*halfsec);
total_busytone=[busytone halfsecpause busytone halfsecpause busytone];
busy=randi([0 1],1);
if busy==1
    sound(total_busytone,10000) 
    pause(3)
else
end