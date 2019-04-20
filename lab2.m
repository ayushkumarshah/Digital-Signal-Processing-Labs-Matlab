x = linspace(-5*pi,5*pi);   %range of x
y1 = 5*sin(x);
plot(x,y1);
title('Sine wave of amplitude 5');
xlabel('x');
ylabel('y(x)');

t = [-10:10];   %range of t
impulse = t==0; %impulse function
unitstep = t>=0;    %unit step function
ramp = t.*unitstep; %ramp function
y2 = sinc(x);   %sinc function

figure;
stem(t,impulse);
title('Unit impulse function')
xlabel('t');
ylabel('x(t)');

figure;
stem(t,unitstep);
title('Unit step function')
xlabel('t');
ylabel('x(t)');

figure;
stem(t,ramp);
title('Unit ramp function')
xlabel('t');
ylabel('x(t)');

figure;
plot(x,y2);
title('Continuous time sinc function')
xlabel('t');
ylabel('x(t)');


figure;
y=exp(0.5*t);   %growing continuous exponential function
subplot(3,1,1);
plot(t,y);
title('Continuous time exponential function (growing)')
xlabel('t');
ylabel('x(t)');


y=exp(-0.5*t);  %decaying continuous exponential function
subplot(3,1,2);
plot(t,y);
title('Continuous time exponential function (decaying)')
xlabel('t');
ylabel('x(t)');


y =exp(0*t);  %DC signal
subplot(3,1,3);
plot(t,y);
title('Continuous time Dc signal')
xlabel('t');
ylabel('x(t)');

