%Punahamoa Walker ? Yi Wu
%Date: 01/29/2019
%Assignment 1

%Time Domain Convolution
x=ones(200,1);  
h1=linspace(0,1,26);
h=[h1,fliplr(h1(1:end-1))]';
y_time=myTimeConv(x,h);
figure
plot(y_time)
title('Time Domain Convolution');
xlabel('t');
ylabel('y(t)');
ylim([0 30]); 


%Frequency Domain Convolution
y_freq=myFreqConv(x,h);
figure
plot(y_freq)
title('Frequency Domain Convolution');
xlabel('t');
ylabel('y(t)');
ylim([0 30]);


%Compare with MATLAB Implementation
[m, mabs, stdev, time] = CompareConv(x, h) %When using the same x and h as previously
[x_piano,fs]=audioread('piano.wav');
[h_impulse,fs]=audioread('impulse-response.wav');
[m2, mabs2, stdev2, time2] = CompareConv(x_piano, h_impulse) %Use piano and impulse as inputs

