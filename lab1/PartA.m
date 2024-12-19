f = @(t) exp(-t).*cos(2*pi*t);
t = (-2:2);
plot(t,f(t));
xlabel('t'); ylabel('f(t)'); grid;
t = (-2:0.01:2);

t = (-2:0.01:2);
f = @(t) exp(-t).*cos(2*pi*t);
plot(t,f(t));
xlabel('t'); ylabel('f(t)'); grid;
