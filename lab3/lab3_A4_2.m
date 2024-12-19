function lab3_A4_2()
    % Define ranges of n for plotting
    ranges = {(-5:5), (-20:20), (-50:50), (-500:500)};
    titles = {'n = -5 to 5', 'n = -20 to 20', 'n = -50 to 50', 'n = -500 to 500'};

    for i = 1:length(ranges)
        n_range = ranges{i};

        % Calculate Dn for x1(t)
        Dn1_vals = lab3_A3_2(n_range);  % Use the new Dn1 function

        % Magnitude and Phase
        mag1 = abs(Dn1_vals);
        phase1 = angle(Dn1_vals);

        % Plotting
        figure;
        
        % Magnitude Spectrum
        subplot(1, 2, 1);
        stem(n_range, mag1, '.k');
        title(['Magnitude Spectrum of x3(t), ', titles{i}]);
        xlabel('n');
        ylabel('|D_n|');
        grid on;
        % Phase Spectrum
        subplot(1, 2, 2);
        stem(n_range, phase1, '.k');
        title('Phase Spectrum of x3(t)');
        xlabel('n');
        ylabel('\angle D_n [rad]');
        grid on;
    end
end

%{
clif;
n = (-20:20);
D_n = sin(n*pi/4)./n*pi;
subplot(1,2,1);
stem(n, abs(D_n), '.k');
xlabel('n'); ylabel('|D_n|');
subplot(1,2,2);
stem(n,angle(D_n), '.k');
xlabel('n'); ylabel('\angle D_n [rad]');
%}