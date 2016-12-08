[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_2sec_2x_sounds.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,1) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_good_stomach.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,2) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_stomach2.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,3) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet1.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,4) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet2.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,5) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet3.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,6) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet4.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,7) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet5.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,8) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet6.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,9) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet7.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,10) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet8.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,11) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet9.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,12) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet10.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,13) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle1.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,14) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle2.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,15) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds24.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,16) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds25.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,17) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking1.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,18) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking2.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,19) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking3.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,20) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking3.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,21) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking4_burp.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,22) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking5.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,23) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds1.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,24) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds2.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,25) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds3.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,26) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds4.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,27) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds5.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,28) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds6.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,29) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds7.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,30) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds8.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,31) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds9.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,32) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds10.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,33) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds11.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,34) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds12.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,35) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds13.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,36) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds14.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,37) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds15.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,38) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds16.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,39) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds17.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,40) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds18.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,41) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds19.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,42) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds20.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,43) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds21.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,44) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds22.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,45) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds23.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,46) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle4.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,47) = mfcctry(f1,30,fbegin,fs);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle3.wav'); 
% disp(fs);
bfil=fft(z); %fft of input signal;
[b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
f=filter(b,a,z);
[c,d]=butter(2,800/(fs/2),'low');
f1=filter(c,d,f);
fs=44100;
fbegin=1;
result4(:,48) = mfcctry(f1,30,fbegin,fs);


result4 = result4';
result4(1,31)=1;
result4(2,31)=1;
result4(3,31)=1;
result4(4,31)=1;
result4(5,31)=1;
result4(6,31)=1;
result4(7,31)=1;
result4(8,31)=1;
result4(9,31)=1;
result4(10,31)=1;
result4(11,31)=1;
result4(12,31)=1;
result4(13,31)=1;
result4(14,31)=1;
result4(15,31)=2;
result4(16,31)=1;
result4(17,31)=1;
result4(18,31)=2;
result4(19,31)=2;
result4(20,31)=2;
result4(21,31)=2;
result4(22,31)=2;
result4(23,31)=2;
result4(24,31)=1;
result4(25,31)=1;
result4(26,31)=1;
result4(27,31)=1;
result4(28,31)=1;
result4(29,31)=1;
result4(30,31)=1;
result4(31,31)=1;
result4(32,31)=1;
result4(33,31)=1;
result4(34,31)=1;
result4(35,31)=1;
result4(36,31)=1;
result4(37,31)=1;
result4(38,31)=1;
result4(39,31)=1;
result4(40,31)=1;
result4(41,31)=1;
result4(42,31)=1;
result4(43,31)=1;
result4(44,31)=1;
result4(45,31)=1;
result4(46,31)=1;
result4(47,31)=2;
result4(48,31)=2;


% Naive Bayes
% Mdl = fitcnb(result4(1:43,1:30),result4(1:43,31));
% Mdl
% oosGenRate = loss(Mdl,result4(44:48,1:30),result4(44:48,31))

% svm
% Mdl = fitclinear(result4(1:43,1:30),result4(1:43,31));
% oosGenRate = loss(Mdl,result4(44:48,1:30),result4(44:48,31))
% % 
%  decision trees
 Mdl = fitctree(result4(1:43,1:30),result4(1:43,31));
 oosGenRate = loss(Mdl,result4(44:48,1:30),result4(44:48,31))

 view(Mdl,'Mode','graph')
 view(Mdl)
%  t=classregtree(meas,species)

% labels = double(rand(10,1)>0.5);
% data = rand(10,5);
% model = svmtrain(labels, data, '-s 0 -t 2 -c 1 -g 0.1')

% model_linear = svmtrain(result4(:,31)', result4(:,1:30)', '-t 0');
% [predict_label_L, accuracy_L, dec_values_L] = svmpredict(result4(:,31), result4(:,1:30), model_linear);


% xMax = max(X);
% xMin = min(X);
% d = 0.01;
% [x1Grid,x2Grid] = meshgrid(xMin(1):d:xMax(1),xMin(2):d:xMax(2));
% 
% [~,PosteriorRegion] = predict(SVMModel,[x1Grid(:),x2Grid(:)]);
% 
% figure;
% contourf(x1Grid,x2Grid,...
%         reshape(PosteriorRegion(:,2),size(x1Grid,1),size(x1Grid,2)));
% h = colorbar;
% h.Label.String = 'P({\it{versicolor}})';
% h.YLabel.FontSize = 16;
% caxis([0 1]);
% colormap jet;
% 
% hold on
% gscatter(X(:,1),X(:,2),y,'mc','.x',[15,10]);
% sv = X(SVMModel.IsSupportVector,:);
% plot(sv(:,1),sv(:,2),'yo','MarkerSize',15,'LineWidth',2);
% axis tight
% hold off
