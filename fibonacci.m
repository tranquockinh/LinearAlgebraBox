function N = fibonacci(num)
    if num < 2
        N = num ;
    else
        N = fibonacci(num-1) + fibonacci(num-2);
    end
return