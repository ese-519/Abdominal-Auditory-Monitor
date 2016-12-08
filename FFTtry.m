[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_2sec_2x_sounds.wav'); 
% disp(fs);
bfil=fft(z,500); %fft of input signal;
% newresult(:,1)=abs(bfil);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,1) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,1) = abs(bfil);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_good_stomach.wav'); 
% % disp(fs);
 bfil2=fft(z,500); %fft of input signal;
% newresult(:,2)=abs(bfil2);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,2) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,2) = abs(bfil2);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/AM_jono_stomach2.wav'); 
% % disp(fs);
 bfil3=fft(z,500); %fft of input signal;
% newresult(:,3)=abs(bfil3);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,3) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,3) = abs(bfil3);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet1.wav'); 
% % disp(fs);
 bfil4=fft(z,500); %fft of input signal;
% newresult(:,4)=abs(bfil4);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,4) = mfcctry(f1,30,fbegin,fs);
%
 result4(:,4) = abs(bfil4);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet2.wav'); 
% % disp(fs);
 bfil5=fft(z,500); %fft of input signal;
% newresult(:,5)=abs(bfil5);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,5) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,5) = abs(bfil5);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet3.wav'); 
% % disp(fs);
 bfil6=fft(z,500); %fft of input signal;
% newresult(:,6)=abs(bfil6);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,6) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,6) = abs(bfil6);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet4.wav'); 
% % disp(fs);
 bfil7=fft(z,500); %fft of input signal;
% newresult(:,7)=abs(bfil7);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,7) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,7) = abs(bfil7);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet5.wav'); 
% % disp(fs);
 bfil8=fft(z,500); %fft of input signal;
% newresult(:,8)=abs(bfil8);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,8) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,8) = abs(bfil8);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet6.wav'); 
% % disp(fs);
 bfil9=fft(z,500); %fft of input signal;
% newresult(:,9)=abs(bfil9);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,9) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,9) = abs(bfil9);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet7.wav'); 
% % disp(fs);
 bfil10=fft(z,500); %fft of input signal;
% newresult(:,10)=abs(bfil10);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,10) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,10) = abs(bfil10);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet8.wav'); 
% % disp(fs);
 bfil11=fft(z,500); %fft of input signal;
% newresult(:,11)=abs(bfil11);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,11) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,11) = abs(bfil11);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet9.wav'); 
% % disp(fs);
 bfil12=fft(z,500); %fft of input signal;
% newresult(:,12)=abs(bfil12);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,12) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,12) = abs(bfil12);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_quiet10.wav'); 
% % disp(fs);
 bfil13=fft(z,500); %fft of input signal;
% newresult(:,13)=abs(bfil13);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,13) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,13) = abs(bfil13);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle1.wav'); 
% % disp(fs);
 bfil14=fft(z,500); %fft of input signal;
% newresult(:,14)=abs(bfil14);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,14) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,14) = abs(bfil14);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle2.wav'); 
% % disp(fs);
 bfil15=fft(z,500); %fft of input signal;
% newresult(:,15)=abs(bfil15);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,15) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,15) = abs(bfil15);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle3.wav'); 
% % disp(fs);
 bfil16=fft(z,500); %fft of input signal;
% newresult(:,16)=abs(bfil16);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,16) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,16) = abs(bfil16);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle4.wav'); 
% % disp(fs);
 bfil17=fft(z,500); %fft of input signal;
% newresult(:,17)=abs(bfil17);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,17) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,17) = abs(bfil17);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking1.wav'); 
% % disp(fs);
 bfil18=fft(z,500); %fft of input signal;
% newresult(:,18)=abs(bfil18);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,18) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,18) = abs(bfil18);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking2.wav'); 
% % disp(fs);
 bfil19=fft(z,500); %fft of input signal;
% newresult(:,19)=abs(bfil19);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,19) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,19) = abs(bfil19);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking3.wav'); 
% % disp(fs);
 bfil20=fft(z,500); %fft of input signal;
% newresult(:,20)=abs(bfil20);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,20) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,20) = abs(bfil20);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking3.wav'); 
% % disp(fs);
 bfil21=fft(z,500); %fft of input signal;
% newresult(:,21)=abs(bfil21);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,21) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,21) = abs(bfil21);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking4_burp.wav'); 
% % disp(fs);
 bfil22=fft(z,500); %fft of input signal;
% newresult(:,22)=abs(bfil22);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,22) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,22) = abs(bfil22);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_talking5.wav'); 
% % disp(fs);
 bfil23=fft(z,500); %fft of input signal;
% newresult(:,23)=abs(bfil23);
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,23) = mfcctry(f1,30,fbegin,fs);
 result4(:,23) = abs(bfil23);

 
 [z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds1.wav'); 
% disp(fs);
bfil24=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,24) = mfcctry(f1,30,fbegin,fs);
 result4(:,24) = abs(bfil24);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds2.wav'); 
% disp(fs);
bfil25=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
 result4(:,25) = abs(bfil25);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds3.wav'); 
% disp(fs);
bfil26=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,26) = mfcctry(f1,30,fbegin,fs);
 result4(:,26) = abs(bfil26);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds4.wav'); 
% disp(fs);
bfil27=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,27) = mfcctry(f1,30,fbegin,fs);
 result4(:,27) = abs(bfil27);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds5.wav'); 
% disp(fs);
bfil28=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,28) = mfcctry(f1,30,fbegin,fs);
 result4(:,28) = abs(bfil28);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds6.wav'); 
% disp(fs);
 bfil29=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,29) = mfcctry(f1,30,fbegin,fs);
 result4(:,29) = abs(bfil29);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds7.wav'); 
% disp(fs);
bfil30=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,30) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,30) = abs(bfil30);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds8.wav'); 
% % disp(fs);
 bfil31=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,31) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,31) = abs(bfil31);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds9.wav'); 
% % disp(fs);
 bfil32=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,32) = mfcctry(f1,30,fbegin,fs);
 result4(:,32) = abs(bfil32);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds10.wav'); 
% disp(fs);
bfil33=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,33) = mfcctry(f1,30,fbegin,fs);
 result4(:,33) = abs(bfil33);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds11.wav'); 
% disp(fs);
 bfil34=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,34) = mfcctry(f1,30,fbegin,fs);
 result4(:,34) = abs(bfil34);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds12.wav'); 
% disp(fs);
bfil35=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,35) = mfcctry(f1,30,fbegin,fs);
 result4(:,35) = abs(bfil35);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds13.wav'); 
% disp(fs);
bfil36=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,36) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,36) = abs(bfil36);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds14.wav'); 
% % disp(fs);
 bfil37=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,37) = mfcctry(f1,30,fbegin,fs);
% 
 result4(:,37) = abs(bfil37);

 [z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds15.wav'); 
% % disp(fs);
 bfil38=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,38) = mfcctry(f1,30,fbegin,fs);
 result4(:,38) = abs(bfil38);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds16.wav'); 
% disp(fs);
bfil39=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,39) = mfcctry(f1,30,fbegin,fs);
 result4(:,39) = abs(bfil39);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds17.wav'); 
% disp(fs);
bfil40=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,40) = mfcctry(f1,30,fbegin,fs);
 result4(:,40) = abs(bfil40);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds18.wav'); 
% disp(fs);
bfil41=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,41) = mfcctry(f1,30,fbegin,fs);
 result4(:,41) = abs(bfil41);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds19.wav'); 
% disp(fs);
bfil42=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,42) = mfcctry(f1,30,fbegin,fs);
 result4(:,42) = abs(bfil42);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds20.wav'); 
% disp(fs);
 bfil43=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,43) = mfcctry(f1,30,fbegin,fs);
 result4(:,43) = abs(bfil43);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds21.wav'); 
% disp(fs);
 bfil44=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,44) = mfcctry(f1,30,fbegin,fs);
 result4(:,44) = abs(bfil44);

[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds22.wav'); 
% disp(fs);
bfil45=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,45) = mfcctry(f1,30,fbegin,fs);
 result4(:,45) = abs(bfil45);


[z,fs]=audioread('/Users/hitalisheth/Downloads/1120/1120_jono_sounds23.wav'); 
% disp(fs);
bfil46=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,46) = mfcctry(f1,30,fbegin,fs);
 result4(:,46) = abs(bfil46);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle4.wav'); 
% disp(fs);
bfil47=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% % fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,47) = mfcctry(f1,30,fbegin,fs);
 result4(:,47) = abs(bfil47);

[z,fs]=audioread('/Users/hitalisheth/Downloads/recordings/pm_jono_rustle3.wav'); 
% disp(fs);
bfil48=fft(z,500); %fft of input signal;
% [b,a]=cheby1(8,0.5,0.04);
% fvtool(b,a);
% f=filter(b,a,z);
% [c,d]=butter(2,800/(fs/2),'low');
% f1=filter(c,d,f);
% fs=44100;
% fbegin=1;
% result4(:,48) = mfcctry(f1,30,fbegin,fs);
 result4(:,48) = abs(bfil48);


% result4 = result4';
% 
 resultnew = result4';
% 
resultnew(1,501)=2;
resultnew(2,501)=2;
resultnew(3,501)=1;
resultnew(4,501)=1;
resultnew(5,501)=1;
resultnew(6,501)=1;
resultnew(7,501)=1;
resultnew(8,501)=1;
resultnew(9,501)=1;
resultnew(10,501)=2;
resultnew(11,501)=1;
resultnew(12,501)=1;
resultnew(13,501)=1;
resultnew(14,501)=1;
resultnew(15,501)=2;
resultnew(16,501)=2;
resultnew(17,501)=2;
resultnew(18,501)=2;
resultnew(19,501)=2;
resultnew(20,501)=2;
resultnew(21,501)=2;
resultnew(22,501)=2;
resultnew(23,501)=2;
resultnew(24,501)=1;
resultnew(25,501)=1;
resultnew(26,501)=1;
resultnew(27,501)=1;
resultnew(28,501)=1;
resultnew(29,501)=1;
resultnew(30,501)=1;
resultnew(31,501)=1;
resultnew(32,501)=1;
resultnew(33,501)=1;
resultnew(34,501)=1;
resultnew(35,501)=1;
resultnew(36,501)=1;
resultnew(37,501)=1;
resultnew(38,501)=1;
resultnew(39,501)=1;
resultnew(40,501)=1;
resultnew(41,501)=1;
resultnew(42,501)=1;
resultnew(43,501)=1;
resultnew(44,501)=1;
resultnew(45,501)=1;
resultnew(46,501)=1;
resultnew(47,501)=2;
resultnew(48,501)=2;
% 


% decision trees
 Mdl = fitctree(resultnew(1:40,1:500),resultnew(1:40,501));
 oosGenRate = loss(Mdl,resultnew(41:48,1:500),resultnew(41:48,501))
 view(Mdl)
 view(Mdl,'Mode','graph')

% Mdl = fitcnb(resultnew(:,1:10),resultnew(:,11));
% oosGenRate = loss(Mdl,resultnew(:,1:10),resultnew(:,11))