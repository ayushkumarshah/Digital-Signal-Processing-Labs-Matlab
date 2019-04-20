%linear convolution
%ques i
x = [1 1 1]
h = [1 1 1]
figure;
% x[n]
subplot(3,1,1);
n=[-1:1];
stem(n,x,'filled');
title('x[n]');
xlabel('n');
ylabel('x[n]');

%h[n]
subplot(3,1,2);
n=[-1:1];
stem(n,h,'filled');
title('h[n]');
xlabel('n');
ylabel('h[n]');

%convolution
subplot(3,1,3)
lin_conv = conv(x,h)
xlim=[-2:2];
stem(xlim,lin_conv,'filled');
ylim([0 4]);
xlabel('n');
ylabel('x[n]*h[n]');
title('Linear Convolution of x[n] and h[n]');

%ques ii
x = [0 1 2 3 4]
h = [0 2 3 4 5]
figure;
% x[n]
subplot(3,1,1);
n=[0:4];
stem(n,x,'filled');
title('x[n]');
xlabel('n');
ylabel('x[n]');

%h[n]
subplot(3,1,2);
n=[0:4];
stem(n,h,'filled');
title('h[n]');
xlabel('n');
ylabel('h[n]');

%convolution
subplot(3,1,3)
lin_conv = conv(x,h)
xlim=[0:8];
stem(xlim,lin_conv,'filled');
xlabel('n');
ylabel('x[n]*h[n]');
title('Linear Convolution of x[n] and h[n]');

%circular convolution
x1=[1 2 2 0]
x2=[1 2 3 4]

figure;
% x1[n]
subplot(3,1,1);
n=[0:3];
stem(n,x1,'filled');
title('x1[n]');
xlabel('n');
ylabel('x1[n]');

%x2[n]
subplot(3,1,2);
n=[0:3];
stem(n,x2,'filled');
title('x2[n]');
xlabel('n');
ylabel('x2[n]');

%convolution
subplot(3,1,3)
circ_conv = ifft(fft(x1).*fft(x2))
stem(n,circ_conv,'filled');
title('Circular Convolution of x1 and x2');
xlabel('n');
ylabel('x1[n](N)x2[n]');
