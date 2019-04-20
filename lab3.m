
f=2e3; %Frequency of sinusoid
cycles=5; %generate five cycles of sinusoid
t=0:1/500e3:cycles*1/f; %time index
x = 5*sin(2*pi*f*t);

subplot(4,1,1); 
plot(t,x);
title('Continuous sinusoidal signal (fm=2 kHz)');
xlabel('Time(s)');
ylabel('Amplitude');



fs1=5e3; %5kHz sampling rate
t1=0:1/fs1:cycles*1/f; %time index
x1 = 5*sin(2*pi*f*t1);
 
fs2=10e3; %10kHz sampling rate
t2=0:1/fs2:cycles*1/f; %time index
x2=5*sin(2*pi*f*t2);

fs3=20e3; %20kHz sampling rate
t3=0:1/fs3:cycles*1/f; %time index
x3=5*sin(2*pi*f*t3);


subplot(4,1,2);
plot(t,x);
hold on;
stem(t1,x1);
title('Sampling Continuous sinusoidal signal at fs1=5 kHz');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,1,3);
plot(t,x);
hold on;
stem(t2,x2);
title('Sampling Continuous sinusoidal signal at fs2=10 kHz');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,1,4);
plot(t,x);
hold on;
stem(t3,x3);
title('Sampling Continuous sinusoidal signal at fs3=20 kHz');
xlabel('Time(s)');
ylabel('Amplitude');


%ques 2
f=2e3; %Frequency of sinusoid
cycles=3; %generate five cycles of sinusoid
t=0:1/500e3:cycles*1/f; %time index
x = 5*cos(2*pi*f*t);

figure;
subplot(4,1,1); 
plot(t,x);
title('Continuous sinusoidal signal (fm=2 kHz)');
xlabel('Time(s)');
ylabel('Amplitude');



fs1=5e3; %5kHz sampling rate
t1=0:1/fs1:cycles*1/f; %time index
x1 = 5*cos(2*pi*f*t1);
 
fs2=10e3; %10kHz sampling rate
t2=0:1/fs2:cycles*1/f; %time index
x2=5*cos(2*pi*f*t2);

fs3=20e3; %20kHz sampling rate
t3=0:1/fs3:cycles*1/f; %time index
x3=5*cos(2*pi*f*t3);


subplot(4,1,2);
plot(t,x);
hold on;
stem(t1,x1);
title('Sampling Continuous sinusoidal signal at fs1=5 kHz');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,1,3);
plot(t,x);
hold on;
stem(t2,x2);
title('Sampling Continuous sinusoidal signal at fs2=10 kHz');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(4,1,4);
plot(t,x);
hold on;
stem(t3,x3);
title('Sampling Continuous sinusoidal signal at fs3=20 kHz');
xlabel('Time(s)');
ylabel('Amplitude');