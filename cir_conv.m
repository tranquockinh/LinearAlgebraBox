function ccirc = cir_conv(x,y)

N = length(x)+length(y)-1;
xpad = [x zeros(1,12-length(x))];
ypad = [y zeros(1,12-length(y))];
ccirc = IDFT(DFT(xpad).*DFT(ypad));
ccirc = ccirc(1:N);

return