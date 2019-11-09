duration = input('Duration of tone: ');
if duration < 0.05
    disp('Your requested duration is below the limit of 50ms');
    disp('Try again');
    error(msg);
elseif duration > 1
    disp('Your requested duration is above the limit of 100ms')
    disp('Try again');
    error(msg);
end