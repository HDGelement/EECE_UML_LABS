%%part 1 - remember he said show off
Points = input('Grade: ');

while Points < 0 || Points > 600
    Points = input('Invalid Value, Please try again. Grade: '); %% is the value between 0 and 600
end

p = parray();

fprintf("letter grade : %s \n", Grade(Points));

Finalgrade = Grade(Points); %calls function Grade to decide the letter grade 

function g = Grade(Points)
    p = parray();
    for i = 1 : 13
        if (Points > p(i, 1) && Points < p(i, 2)) || (Points == p(i, 1) || Points == p(i, 2))
            g = char(p(i, 3));
            g = char(g, plus_minus(Points));
        end
    end
end

function pm = plus_minus(Points) 
    p = parray();
    for i = 1 : 13
        if Points > p(i, 1) && Points < p(i, 2)
            pm = char(p(i, 4));
        elseif Points == p(i, 1) || Points == p(i, 2)
            pm = char(p(i, 4));
        end
    end
end

function p = parray() %this function creates an array for the grades, the plus or minus
    num = 0;
    p(1, 1) = 0;
    p(1, 2) = 300;
    p(1, 3) = char(round(int8('E')));
    p(1, 4) = char(0);
    %fprintf("Array Char = %s \n", char(p(1, 3)));
    %fprintf("Array Char = %s \n", char(p(1, 4)))

    for i = 1 : 6
        p(1 + i, 1)= (300 + (20 * (i - 1)));
        p(1 + i, 2)= (300 + (20 * (i)));
        p(1 + i, 3)= char(round(int8('E') - (((i+1)/3))));
        if mod(i, 3) == 1
            p(1 + i, 4)= char(45);
        end
        if mod(i, 3) == 2
            p(1 + i, 4)= char(0);
        end
        if mod(i, 3) == 0
            p(1 + i, 4)= char(43);
        end
        %fprintf("Array Char = from %i to %i is a letter grade of %s%s \n ", p(1 + i, 1), p(1 + i, 2), char(p(1+i, 3)), char(p(1+i, 4)));
        %fprintf("Grades = %0f = %0f \n char = %s \n ", (300+ (20 * (i - 1))), double('E') - ((i/3)), char(round(int8('E') - ((i/3))))); %algorithm for grades just need to use input now.
        num = num + (double('A') + i);
    end

    %fprintf("im in the middle \n");

    for i = 5 : 10
        p(3 + i, 1)= (300 + (30 * (i - 1)));
        p(3 + i, 2)= (300 + (30 * (i)));
        p(3 + i, 3)= char(round(int8('E') - (((i+3)/3))));
        if mod(i, 3) == 2
            p(3 + i, 4)= char(45);
        end
        if mod(i, 3) == 0
            p(3 + i, 4)= char(0);
        end
        if mod(i, 3) == 1
            p(3 + i, 4)= char(43);
        end
        %fprintf("Array Char = from %i to %i is a letter grade of %s%s \n ", p(3 + i, 1), p(3 + i, 2), char(p(3+i, 3)), char(p(3+i, 4)));
        %fprintf("Grades = %0f = %0f \n char %s \n", pt, double('E') - ((i/3)), char(round(int8('E') - ((i/3)))));
        num = num + (double('A') + i);
    end
end