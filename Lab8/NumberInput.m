digitseq = input('Input digits \n(Please input the digits with spaces in between each digit):','s');
digitseq = str2num(digitseq);
if sum(digitseq)== 0
    msg='Digit sequence contained text or was empty, please only input number values';
    error(msg);
else
end
rangetest=digitseq(digitseq>9 | digitseq<0);
if sum(rangetest)~= 0
    newseq = digitseq;
    newseq(newseq>9 | newseq<0) = [];
    from newsequence
    disp('Sequence entered contains values out of range.') 
    disp('Would you like to dial')
    prompt = input('Press enter to dial this new sequence','s');
    if isempty(prompt)
        digitseq=newseq; 
    else
        msg='Sequence can not be dialed with out of range values';
        error(msg)
    end
else
end
integertest = rem(digitseq,1); 
if sum(integertest) ~= 0
    newseq = digitseq;
    newseq(rem(newseq,1)~=0) = [];
    prompt = input('Press enter to dial this new sequence','s');
    if isempty(prompt) 
        digitseq=newseq; 
    else
        msg='Sequence can not be dialed with non-integer values'; 
        error(msg)
    end
else
end
            