

%{
function a6()
    ranges = {(-5:5), (-20:20), (-50:50), (-500:500)};
    t = -300:1:300;
    titles = {'n = -5 to 5', 'n = -20 to 20', 'n = -50 to 50', 'n = -500 to 500'};
    for i = 1:length(ranges)
        n_range = ranges{i};

        % Calculate Dn for x1(t)
        Dn1_vals = lab3_A3(n_range);
    % Define the range of n for generating Dn
      % You can change this range as needed

    % Define the time variable
    %t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.1;

    % Loop through the range of n to reconstruct the signal
    for k = 1:length(n_range)
        n = n_range(k);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn1_vals(k) * exp(1j * n * w * t);  % Adjust the frequency if necessary
    end
    

    % Take the real part of the signal
    x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title(['Reconstructed Time-Domain Signal x1(t)', titles{i}]);
    xlabel('Time (t)');
    ylabel('x1(t)');
    ylim([-2 2]);
    grid on;
    end
end
%}



%{
function a6()
    ranges = {(-5:5), (-20:20), (-50:50), (-500:500)};
    t = -300:1:300;
    titles = {'n = -5 to 5', 'n = -20 to 20', 'n = -50 to 50', 'n = -500 to 500'};
    for i = 1:length(ranges)
        n_range = ranges{i};

        % Calculate Dn for x1(t)
        Dn1_vals = lab3_A3_1(n_range);
    % Define the range of n for generating Dn
      % You can change this range as needed

    % Define the time variable
    %t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.1;

    % Loop through the range of n to reconstruct the signal
    for k = 1:length(n_range)
        n = n_range(k);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn1_vals(k) * exp(1j * n * w * t);  % Adjust the frequency if necessary
    end
    

    % Take the real part of the signal
    x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title(['Reconstructed Time-Domain Signal x2(t)', titles{i}]);
    xlabel('Time (t)');
    ylabel('x2(t)');
    ylim([-2 2]);
    grid on;
    end
end
%}

%
function a6()
    ranges = {(-5:5), (-20:20), (-50:50), (-500:500)};
    t = -300:1:300;
    titles = {'n = -5 to 5', 'n = -20 to 20', 'n = -50 to 50', 'n = -500 to 500'};
    for i = 1:length(ranges)
        n_range = ranges{i};

        % Calculate Dn for x1(t)
        Dn1_vals = lab3_A3_2(n_range);
    % Define the range of n for generating Dn
      % You can change this range as needed

    % Define the time variable
    %t = -300:1:300;  % Time range from -300 to 300

    % Initialize the reconstructed signal
    x_t = zeros(size(t));
    w = pi*0.1;

    % Loop through the range of n to reconstruct the signal
    for k = 1:length(n_range)
        n = n_range(k);
        % Reconstruct the signal using the formula
        x_t = x_t + Dn1_vals(k) * exp(1j * n * w * t);  % Adjust the frequency if necessary
    end
    

    % Take the real part of the signal
    x_t = real(x_t);

    % Plot the reconstructed signal
    figure;
    plot(t, x_t,'k');
    title(['Reconstructed Time-Domain Signal x3(t)', titles{i}]);
    xlabel('Time (t)');
    ylabel('x3(t)');
    ylim([-2 2]);
    grid on;
    end
end
%}