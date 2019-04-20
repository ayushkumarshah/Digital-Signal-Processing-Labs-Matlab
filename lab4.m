%odd signal
x = linspace(-2*pi,2*pi); % time grid
N1=3;
N2=9;
N3=100;
n1 = [1:2:N1];   
n2 = [1:2:N2];
n3 = [1:2:N3];
a0=0;
c=1;

% plot
figure;
subplot(3,1,1);

fx =a0+ sum(4*c/pi*diag(1./n1)*sin(n1(:)*x(:)')); % summation
plot(x,fx);
xlabel('x');
ylabel('f(x)');
title('Fourier series expansion of odd signal for N=3');

subplot(3,1,2);
fx =a0+ sum(4*c/pi*diag(1./n2)*sin(n2(:)*x(:)')); % summation
plot(x,fx);
xlabel('x');
ylabel('f(x)');
title('Fourier series expansion of odd signal for N=9');

subplot(3,1,3);
fx =a0+ sum(4*c/pi*diag(1./n3)*sin(n3(:)*x(:)')); % summation
plot(x,fx);
xlabel('x');
ylabel('f(x)');
title('Fourier series expansion of odd signal for N=100');

%even signal
t = linspace(-1,1); % time grid
a0=1/2;
T=1;

% plot
figure;
subplot(3,1,1);
xt =a0+ sum(2/pi*diag((1./n1).*((-1).^((ceil(n1./2))+1)))*cos(2*pi*(1/T)*n1(:)*t(:)')); % summation
plot(t,xt);
xlabel('t');
ylabel('x(t)');
title('Fourier series expansion of even signal for N=3, T=1');

subplot(3,1,2);
xt =a0+ sum(2/pi*diag((1./n2).*((-1).^((ceil(n2./2))+1)))*cos(2*pi*(1/T)*n2(:)*t(:)')); % summation
plot(t,xt);
xlabel('t');
ylabel('x(t)');
title('Fourier series expansion of even signal for N=9, T=1');

subplot(3,1,3);
xt =a0+ sum(2/pi*diag((1./n3).*((-1).^((ceil(n3./2))+1)))*cos(2*pi*(1/T)*n3(:)*t(:)')); % summation
plot(t,xt);
xlabel('t');
ylabel('x(t)');
title('Fourier series expansion of even signal for N=100, T=1');


% 
% c=1;
% an0=4*c/pi;
% a0=0;
% x = [-2*pi:0.01:2*pi];
% figure;
% hold on;
% N=100
% for n=1:1:2
%  if rem(n,2)==0
%      an=0;
%  else 
%     an=an0*1/n
%  end
%  fx=a0+an*sin(n.*x);
%  plot(x,fx)
% end