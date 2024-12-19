N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
z = Xf.*Xf;
z2 = ifft(z);
subplot(211);plot(z2);grid on;
title('Frequency Domain')
xlabel('Time');
ylabel('z(t)');
axis([-10 30 -0.1 12]);

% --------------------------------------------------------------------

u = @(t) 1.0*(t>=0);
D = zeros(size(t));
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
D = conv(x,x);
subplot(212);plot(D);grid on;
title('Time Domain')
xlabel('Time');
ylabel('z(t)');
axis([-10 30 -0.1 12]);