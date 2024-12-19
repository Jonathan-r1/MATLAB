p = @(t) 1.0.*((t>=0)&(t<1));
t = (-2:0.01:2);
plot(t,p(t)); %change depending on function needing to be plotted
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)'); % edit for proper labels
axis([-1 2 -.1 1.1]);% change axis size
grid;

%r = @(t) t.*p(t); %B.2
%n = @(t) r(t) + r(-t+2);%B.2
%n1 = @(t) n(0.5.*t); %B.3
%n2 = @(t) n1(t+0.5); %B.3
%n3 = @(t) n(t+0.25); %B.4
%n4 = @(t) n3(0.5.*t); %B.4
%t = (-1:0.01:5); 
