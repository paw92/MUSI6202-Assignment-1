%Punahamoa Walker ? Yi Wu
%Date: 01/29/2019
%Assignment 1

%This function performs frequency domain convolution

function y = myFreqConv(x,h)

if(length(x) < length(h))
    sig1 = h';
    sig2 = x';
else
    sig1 = x';
    sig2 = h';
end

%compute length of y
N = length(sig1) + length(sig2) - 1;
%zero padding
sig1 = [sig1, zeros(1, N - length(sig1)) ];
sig2 = [sig2, zeros(1, N - length(sig2)) ];
%compute fft
SIG1 = fft(sig1, N);
SIG2 = fft(sig2, N);
%freq domain conv
Y = SIG1 .* SIG2;
%inverse fft
y = ifft(Y, N)';

end

