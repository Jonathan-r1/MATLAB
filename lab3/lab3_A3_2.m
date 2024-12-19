function Dn = lab3_A3_2(n_range)
    % Function to generate Fourier coefficients Dn for a given range of n
    
    % Initialize Dn array to zero for all n in the specified range
    Dn = zeros(size(n_range));
    
    % Iterate over the range of n
    for i = 1:length(n_range)
        n = n_range(i);
        
        % Assign values to Dn based on the cases derived

        if n == 0
            % Handle the case where n = 0 to avoid division by zero
            Dn(i) = 0;  % Dn(0)
        else
            Dn(i) = sin(n * pi / 4) / (n * pi); %A3
            %Dn(i) = sin(n*pi/2) / (n*pi); %A2
        end
    end
end
