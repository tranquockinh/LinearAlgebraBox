function X = DFT(x)

N = length(x);
n = 1:N;
k = 1:N;

X = zeros(N,1);

for j = 1:N
    X(j) = dot(x,exp(-2j*pi/N * (k(j)-1) * (n-1)));

end

return