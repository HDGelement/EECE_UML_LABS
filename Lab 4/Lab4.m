%%part 1 - remember he said show off
Points = input ('Grade: ');
%{
E = 0-300
D = 300-320
D = 320-340
D =  340-360
C = 360-380
C = 380-400
C+ 400-420
B- 420-450
B 450-480
B+ 480-510
A- 510-540
A 540-570
A+ 570-600 
%}
fprintf("MY POINTS: %0f \n", Points);
num = 0;
  for i = 1 : 7
    fprintf("Grades = %0f = %0f \n", (300 + (20 * (i - 1))), double('E') - ((i/3))); %algorithm for grades just need to use input now.
    num = num + (double('A') + i);
  end
  fprintf("im in the middle \n");
  for i = 6 : 11
    fprintf("Grades = %0f = %0f \n", (300 + (30 * (i - 1))), double('E') - ((i/3)));
    num = num + (double('A') + i);
  end
 
Grade(Points);
function Finalgrade = Grade(Points)
    
end

    