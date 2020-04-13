Md1= arima(2,0,0);
data = readtable('D:\Desktop\Project_ARMA\data1.csv');
openingdata=data(:,2);
openingdata=table2array(openingdata);
%Converted table type to array type, and then using the same 
openingdata=openingdata';

closingdata=data(:,5);
closingdata=table2array(closingdata);
closingdata=closingdata';

%Analysis done for opening data.. Making it a time series.
o_mean=mean(openingdata);
disp(o_mean);
o_var=var(openingdata);
disp(o_var);

figure
subplot(2,1,1);
hist(openingdata);
title("Histogram plot of the series");
subplot(2,1,2);
plot(openingdata);
title("Plot of the series");

figure
subplot(2,1,1);
autocorr(openingdata);
%subplot(2,1,2);
%partialcorr(openingdata);

