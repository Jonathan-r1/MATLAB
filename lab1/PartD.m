%{
load('ELE532_Lab1_Data.mat')
num_rows = size(B,1);
num_cols = size(B,2);

for i=1:1:num_rows
    for j=1:1:num_cols
        if (abs(B(i,j)) < 0.01)
            B(i,j)=0;
        end
    end
end
%}

%Part B
%{
load('ELE532_Lab1_Data.mat')
B([abs(B)>=0.01]) = 0
%}

%Part C
%{
tic
load('ELE532_Lab1_Data.mat')
num_rows = size(B,1);
num_cols = size(B,2);

for i=1:1:num_rows
    for j=1:1:num_cols
        if (abs(B(i,j)) < 0.01)
            B(i,j)=0;
        end
    end
end
fprintf('\nD2:\nFor part a:\n')
toc

tic
load('ELE532_Lab1_Data.mat')
B([abs(B)>=0.01]) = 0
fprintf('\nD2:\nFor part b:\n')
toc
%}

load('ELE532_Lab1_Data.mat')
audio = x_audio;
num_rows = size(audio, 1);
num_cols = size(audio, 2);
num_of_zeros = 0;

for i = 1: num_rows
    for j=1:num_cols
        if(abs(audio(i,j)==0))
            num_of_zeros = num_of_zeros +1;
        end
    end
end
fprintf("\n" + num_of_zeros);
sound(audio,8000);
