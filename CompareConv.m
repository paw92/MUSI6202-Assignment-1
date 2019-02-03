%Punahamoa Walker ? Yi Wu
%Date: 01/29/2019
%Assignment 1

%Compare Convolution Function

function [m, mabs, stdev, time] = CompareConv(x, h)
tic;
y_matlab=conv(x,h);
time(1,1)=toc;

tic;
y_time=myTimeConv(x,h);
time(2,1)=toc;

tic;
y_freq = myFreqConv(x, h);
time(3,1) = toc;

m_time = mean(y_time - y_matlab);
m_freq = mean(y_freq - y_matlab);

m = [m_time, m_freq];
mabs = [mean(abs(m_time)), mean(abs(m_freq))];
stdev = [std(m_time), std(m_freq)];

end