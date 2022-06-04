function x = IDFT(X)

N = length(X);
n = 1:N;
k = 1:N;

x = zeros(N,1);

for j = 1:N
    x(j) = (1/N)*dot(X, exp(2j*pi/N * (k(j)-1) * (n-1)));
    
end

x(2:N) = x(N:-1:2);

return