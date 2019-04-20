clc
f1=figure;
surf(peaks);
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Height')
title('Peaks')

x=linspace(1,19,10);   %returns a row vector of 10 evenly spaced points between x1=1 and x2=19. 
                        %Default no of points=100

y=x*2;
close(f1);	%the figure window f1 is closed
f2 = figure;	%figure window f2 is created
figure(f2);	%figure window f2 is selected
subplot(3,1,1);	% divides the current figure into an 3 -by- 1 grid and creates axes in the position specified by p=1
stem(x,y); %plots the data sequence, Y, at values specified by X. The X and Y inputs must be vectors or matrices of the same size.
xlabel('X')
ylabel('Y')
title('Stem diagram')

subplot(3,1,2);
bar(x,y);   %draws the bars at the locations specified by x.
xlabel('X')
ylabel('Y')
title('Bar diagram')

subplot(3,1,3);
plot(x,y);   %creates a 2-D line plot of the data in Y versus the corresponding values in X.
xlabel('X')
ylabel('Y')
title('Plot diagram')


A=[1 2 3 4
5 6 7 8
9 10 11 12]

B=[1 2 3 
4 5 6
7 8 9
10 11 12]

C=A+B
D=A-B
E=A*B
F=B*A

AT=A'
BT=B'
G=AT*BT
    
