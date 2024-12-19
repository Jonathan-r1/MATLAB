
% Problem A.3: Calculate Z(ω) = X(ω) * X(ω)

% Parameters (same as Problem A.1)
N = 100;          
PulseWidth = 10;  

% Time vector
t = [0:1:(N-1)];

% Define the signal x(t)
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];

% Compute Fourier Transform of x(t)
Xf = fft(x);
z = Xf.*Xf;
% Define frequency vector f (in Hz)
f = [-(N/2)+1:1:(N/2)]*(1/N);  % Normalized frequency

% Plot Magnitude and Phase of Z(ω)
figure;
subplot(2,1,1);
plot(f, fftshift(abs(z)));
grid on;
title('Magnitude Spectrum of Z(\omega) = X(\omega) \cdot X(\omega)');
xlabel('Frequency (Hz)');
ylabel('|Z(\omega)|');

subplot(2,1,2);
plot(f, fftshift(angle(z)));
grid on;
title('Phase Spectrum of Z(\omega) = X(\omega) \cdot X(\omega)');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
%}