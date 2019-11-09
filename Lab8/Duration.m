dur = input('Duration of tone: ');
if dur < 0.05
    disp('Your requested duration is lower than the limit of 50 sec');
    disp('Try again');
    error(msg);
elseif dur > 1
    disp('Your requested duration is bigger the limit of 1 sec')
    disp('Try again');
    error(msg);
end