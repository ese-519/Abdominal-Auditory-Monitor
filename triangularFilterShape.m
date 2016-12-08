function [out,k] = triangularFilterShape(f,N,fs)
    N2 = max([floor(N+1)/2 floor(N/2)+1]);
    M = length(f);
    k = linspace(0,fs/2,N2);
    out = zeros(N2,M-2);
    for m=2:M-1
        I = k >= f(m-1) & k <= f(m);
        J = k >= f(m) & k <= f(m+1);
        out(I,m-1) = (k(I) - f(m-1))./(f(m) - f(m-1));
        out(J,m-1) = (f(m+1) - k(J))./(f(m+1) - f(m));
    end
end

