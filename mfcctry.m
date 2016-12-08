function output = mfcctry(x,M,fbegin,fs)
    MF = @(f) 2595.*log10(1 + f./700);
    invMF = @(m) 700.*(10.^(m/2595)-1);
 
    M = M+2;		% number of triangular filers
    mm = linspace(MF(fbegin),MF(fs/2),M);   % equal space in mel-frequency
    ff = invMF(mm);	% convert mel-frequencies into frequency
 
    X = fft(x);
    N = length(X);	% length of a short time window
    N2 = max([floor(N+1)/2 floor(N/2)+1]); %
    P = abs(X(1:N2,:)).^2./N;		% NoFr no. of periodograms
    mfccShapes = triangularFilterShape(ff,N,fs); %
    output = log(mfccShapes'*P);
end
 
