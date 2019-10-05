%%part 1

%if you dont clear these variables then it keeps adding 2004 to the next
%element of array "year", also this was done for part f.)

clear all;
Winners_data = ["1928 Betty Robinson, USA 12.2";"1932 Stella Walsh, POL 11.9";"1936 Helen Stephens, USA 11.5";"1948 Fanny Blankers-Koen, NED 11.9";"1952 Marjorie Jackson, AUS 11.5";"1956 Betty Cuthbert, AUS 11.5";"1964 Wyomia Tyus, USA 11.4";"1968 Wyomia Tyus, USA 11.08";"1972 Renate Stecher, E. Ger 11.07";"1976 Annegret Richter, W. Ger 11.08";"1980 Lyudmila Kondratyeva, USSR 11.06";"1984 Evelyn Ashford, USA 10.97";"1988 Florence Griffith Joyner, USA 10.54";"1988 Florence Griffith Joyner, USA 10.54";"1992 Gail Devers, USA 10.82";"1996 Gail Devers, USA 10.94";"2000 Marion Jones, USA 10.75"];
yrstr = extractBetween(Winners_data, 1, 4);
kms = eraseBetween(Winners_data, 1, strlength(Winners_data) - 5);
time = 0;
for i = 1:17
   year(i) = str2num(yrstr(i));
   time(i) = str2num(kms(i));
end

time(length(time) + 1) = 10.93; %adding time data for part f.)
year(length(year) + 1) = 2004; %extending line to 2004

%a.)
figure(1)
plot(year, time);
hold on;

title('Women’s 100-meter time versus year');
xlabel('year');
ylabel('sec');

%b.)
fitcoef = polyfit(year, time, 1);
best_fitval = polyval(fitcoef, year);

%c.)
plot(year, best_fitval, '--r');
hold on;

%d.)
RMSE = sqrt(mean((best_fitval - time).^2));

%e.)

ywilma = (fitcoef(1) * 1960) + fitcoef(2);
plot(1960, 11, '.g');
RMSEw = sqrt(mean((11 - ywilma).^2));

%f.) First part is done above before part a.)

ynesterenko = (fitcoef(1) * 2004) + fitcoef(2)
plot(1960, 11, '.g');
RMSEn = sqrt(mean((11 - ynesterenko).^2))

%%part 2 - DO NOT FORGET TO LOAD "EECE1070.MAT, 'xvals' and the same for yvals"

load('EECE1070.mat')
figure(2)
title('EECE1070');
xlabel('X-vals');
ylabel('Y-vals');
plot(xvals, yvals2, 'b-');
hold on;

%degree 1
CEcoef1 = polyfit(xvals, yvals2, 1);
CE_bestfit1 = polyval(CEcoef1, xvals);
plot(xvals, CE_bestfit1, 'r--')
hold on;
RMSE1 = sqrt(mean((CE_bestfit1 - yvals2).^2));

%degree 2
CEcoef2 = polyfit(xvals, yvals2, 2);
CE_bestfit2 = polyval(CEcoef2, xvals);
plot(xvals, CE_bestfit2, 'bl--')
hold on;
RMSE2 = sqrt(mean((CE_bestfit2 - yvals2).^2));

%degree 3
CEcoef3 = polyfit(xvals, yvals2, 3);
CE_bestfit3 = polyval(CEcoef3, xvals);
plot(xvals, CE_bestfit3, 'g--')
hold on;
RMSE3 = sqrt(mean((CE_bestfit3 - yvals2).^2));

hold off;
hold off;
hold off;
%%part 3

figure(3)
x = rand(100000,1);
histogram(x,100);
%prabibility of being in a bin is 1/100000 because theres 100000 numbers in
%a one dimensional array of columns
xmean = mean(x);
stdevx = std(x);

figure(4)
y = randn(100000,1);
histogram(y,100);
ymean = mean(y);
stdevy = std(y);

my = 0;
for i = 1:100000
    if y(i) > 1
        my = my+1;
    end
end
prabability = (my / 100000)*100;

fprintf("the chances of y being bigger than one is a %.0f percent chance\n", prabability);

