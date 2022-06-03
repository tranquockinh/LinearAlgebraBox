function X  = FFT(x)
    
    N = length(x); 
    n = 1:N; 
    even = n(1:2:N); 
    odd = n(2:2:N);
    X = zeros(1, N);
    for j = 1:N

        fft_even = x(even)*exp(-2j*pi*(j-1)*(even-1)'/N);
        fft_odd = x(odd)*exp(-2j*pi*(j-1)*(odd-1)'/N);

        X(j) =  fft_even + fft_odd;
    end

return