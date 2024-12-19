% W+
figure(1)
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Wplus = fft(x.*exp(1i*(pi/3)*t));
subplot(311); plot(f,Wplus); grid on;
title("Wplus(t)")
xlabel('Frequency (Hz)');
ylabel('Amplitude');
subplot(312); plot(f,fftshift(abs(Wplus))); grid on;
title('Magnitude Spectrum')
xlabel('Frequency (Hz)');
ylabel('|W^+(\omega)|');
subplot(313); plot(f,fftshift(angle(Wplus))); grid on;
title('Angle Spectrum')
xlabel('Frequency (Hz)');
ylabel('Phase(W^+(\omega))');

% W-
figure(2)
Wminus = fft(x.*exp(-1i*(pi/3)*t));
subplot(311); plot(f,Wminus); grid on;
title("Wminus(t)")
xlabel('Frequency (Hz)');
ylabel('Amplitude');
subplot(312); plot(f,fftshift(abs(Wminus))); grid on;
title('Magnitude Spectrum')
xlabel('Frequency (Hz)');
ylabel('|W^-(\omega)|');
subplot(313); plot(f,fftshift(angle(Wminus))); grid on;
title('Angle Spectrum')
xlabel('Frequency (Hz)');
ylabel('Phase(W^-(\omega))');



% Wc
figure(3)
Wcos = fft(x.*cos((pi/3)*t));
subplot(311); plot(f, Wcos); grid on;
title("Wcos(t)")
xlabel('Frequency (Hz)');
ylabel('Amplitude');
subplot(312); plot(f,fftshift(abs(Wcos))); grid on;
title('Magnitude Spectrum')
xlabel('Frequency (Hz)');
ylabel('|W^c(\omega)|');
subplot(313); plot(f,fftshift(angle(Wcos))); grid on;
title('Angle Spectrum')
xlabel('Frequency (Hz)');
ylabel('Phase(W^c(\omega))');