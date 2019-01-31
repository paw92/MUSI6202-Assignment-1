function [m, mabs, stdev, time] = CompareConv(x, h)
tic
y_matlab=conv(x,h);
time(1,1)=toc;
tic
y_time=myTimeConv(x,h);
time(2,1)=toc;

time_difference=y_time-y_matlab;

m(1,1)=mean(time_difference);
mabs(1,1)=mean(abs(time_difference));
stdev(1,1)=std(time_difference);

end