%{
function a5()
    % Define the range of n for generating Dn
    n_range = -5:5;  % You can change this range as needed

    % Generate Fourier coefficients Dn using the provided function
    Dn = lab3_A3(n_range);

    % Define the time variable
    t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.1;

    % Loop through the range of n to reconstruct the signal
    for i = 1:length(n_range)
        n = n_range(i);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn(i) * exp(j * n *w* t);  % Adjust the frequency if necessary
    end

    % Take the real part of the signal
   % x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title('Reconstructed Time-Domain Signal x1(t)');
    xlabel('Time (t)');
    ylabel('x1(t)');
    grid on;
end
%}

%{
function a5()
    % Define the range of n for generating Dn
    n_range = -5:5;  % You can change this range as needed

    % Generate Fourier coefficients Dn using the provided function
    Dn = lab3_A3_1(n_range);

    % Define the time variable
    t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.1;

    % Loop through the range of n to reconstruct the signal
    for i = 1:length(n_range)
        n = n_range(i);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn(i) * exp(j * n *w* t);  % Adjust the frequency if necessary
    end

    % Take the real part of the signal
   % x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title('Reconstructed Time-Domain Signal x2(t)');
    xlabel('Time (t)');
    ylabel('x2(t)');
    grid on;
end
%}

%
function a5()
    % Define the range of n for generating Dn
    n_range = -500:500;  % You can change this range as needed

    % Generate Fourier coefficients Dn using the provided function
    Dn = lab3_A3_2(n_range);

    % Define the time variable
    t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.05;

    % Loop through the range of n to reconstruct the signal
    for i = 1:length(n_range)
        n = n_range(i);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn(i) * exp(1j * n * w * t);  % Adjust the frequency if necessary
    end

    % Take the real part of the signal
    x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title('Reconstructed Time-Domain Signal x3(t)');
    xlabel('Time (t)');
    ylabel('x3(t)');
    grid on;
end
%}