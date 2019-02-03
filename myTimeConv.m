%Punahamoa Walker ? Yi Wu
%Date: 01/29/2019
%Assignment 1


%This function performs time domain convolution
function y=myTimeConv(x,h)

%Reverse the short signal
if length(x)<length(h)
    sig1=flipud(x);
    sig2=h;
else
    sig1=flipud(h);
    sig2=x;
end

for i=1:(length(sig1)-1)
    y1(i)=sig2(1:i)'*sig1(end-i+1:end);  
end
for i=1:length(sig2)-length(sig1)+1
    y2(i)=sig2(i:i+length(sig1)-1)'*sig1(1:end);
end
for i=1:(length(sig1)-1)
    y3(i)=sig2(end-length(sig1)+i+1:end)'*sig1(1:length(sig1)-i);
end
y=[y1';y2';y3'];
end 