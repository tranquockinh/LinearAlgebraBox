function X = FFT_recursive(x)

N = length(x);
n = 0:N-1;

if N == 1
    X = x;
else
    %%% from x[0] = x(1), x[1] = x(2), Matlab start from 1.
    Xe = FFT_recursive(x(1:2:N));             % compute even part
    Xo = FFT_recursive(x(2:2:N));             % compute odd part
    
    factor = exp(-2j*pi*n/N)';       % compute multiplication factors  

    X = [Xe+factor(1:N/2).*Xo; Xe+factor(N/2+1:N).*Xo];
    
end

return