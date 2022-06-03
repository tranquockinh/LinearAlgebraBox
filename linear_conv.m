function linear_conv(x,h)

res = zeros(1,length([x, h])-1);
x = [zeros(1, length(h)-1), x, zeros(1, length(h)-1)]; % Zeros padding

for j = 1:length(res)
    m = j+length(h)-1;
    res(j) = x(j:m)*fliplr(h)';
end

disp(res)

return