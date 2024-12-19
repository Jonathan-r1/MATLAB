
% Parameters (same as Problem A.1)
N = 100;          
PulseWidth = 10;  

% Time vector
t = 0:N-1;

% Define the signal x(t)
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];

% Compute Fourier Transform of x(t)
Xf = fft(x);

% Compute Z(ω) = X(ω) * X(ω)
Zf = Xf .* Xf;  % Element-wise multiplication in the frequency domain

% Shift Zf to center the zero frequency component (if needed later)
Zf_shifted = fftshift(Zf);

% Display the computed values in the terminal
disp('Computed values of Z(ω):');
disp(Zf);

disp('Shifted values of Z(ω):');
disp(Zf_shifted);