digitsequence = input('Input digit sequence \n(Please input with spaces in between each digit):','s');
digitsequence = str2num(digitsequence);
if sum(digitsequence)==0
    msg='Digit sequence contained text or was empty, please only input number values';
    error(msg);
else
end
rangetest=digitsequence(digitsequence>9 | digitsequence<0);
if sum(rangetest)~=0
    newsequence=digitsequence;
    newsequence(newsequence>9 | newsequence<0)=[];
    from newsequence
    disp('Sequence entered contains values outside of range.') 
    disp('Would you like to dial')
    enterprompt=input('Press enter to dial this new sequence','s');
    if isempty(enterprompt)
        digitsequence=newsequence; 
    else
        msg='Sequence can not be dialed with out of range values';
        error(msg)
    end
else
end
integertest=rem(digitsequence,1); 
if sum(integertest)~=0
    newsequence=digitsequence;
    newsequence(rem(newsequence,1)~=0)=[];
    enterprompt=input('Press enter to dial this new sequence','s');
    if isempty(enterprompt) 
        digitsequence=newsequence; 
    else
        msg='Sequence can not be dialed with non-integer values'; 
        error(msg)
    end
else
end
            