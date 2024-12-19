%{
%Part A 
%f(t) function
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2);
%u(t) function
u = @(t) 1.0.*(t>=0);
g = @(t) f(t).*u(t);
plot(t, g(t));
xlabel('t'); ylabel('g(t) = f(t)*u(t)'); grid;
%}

%{
%Part B
%f(t) function
f = @(t) exp(-2.*t).*cos(4*pi*t);
t = (-2:0.01:2);
%u(t) function
u = @(t) 1.0.*(t>=0);
g = @(t) f(t).*u(t);
%s(t) function
s = @(t) g(t+1);
t = (0:0.01:4);
plot(t, s(t));
xlabel('t'); ylabel('s(t) = g(t+1)'); grid;
%}

%Part C
alpha = [1,3,5,7];
t = (0:0.01:4)';
%u(t) function
u = @(t) 1.0.*(t>=0);
%s(t) function
s_alpha = exp(-2).*exp(-alpha.*t).*cos(4*pi*t).*u(t);
T = t*ones(1,4);
% find each function for alpha
q = exp(-T*diag(alpha)).*s_alpha;
plot(t, q); 
xlabel('t');
ylabel('s(t)');
grid;
%legend
legend('\alpha = 1', '\alpha = 3', '\alpha = 5', '\alpha = 7');
title('Plot of s_\alpha(t) for different values of \alpha');
%}