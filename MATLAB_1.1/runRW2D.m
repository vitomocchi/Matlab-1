clearvars, close all

% 1) Generating 2D random walks with steps of length h = 1.
% rng('default'); % Standardization.
% rng(1);         % Standardization.
N=10; % # steps.
ntrials=1000; % # walkers. If you want to plot the random walks for a greater number of steps, please consider reducing the ntrials number for easier computation.
figure, hold on 
for i=1:ntrials
    P=randomwalk2D(N,'true'); % P = sequence of N+1 positions for each trial.
end
hold off

% 2) var(x), var(y) (final position of the particle)
NN=[10 20 40 60 160 320 640];
ntrials=1e3; % # Generated trajectories for each parametric value of N.
for in=1:numel(NN) 
    N=NN(in); % # Steps.
    for i=1:ntrials
        P=randomwalk2D(N,'false');
        Pfinale(i,1)=P(end,1); % Final position - x-axes.
        Pfinale(i,2)=P(end,2); % Final position - y-axes.
    end
    walk_varx(in)=var(Pfinale(:,1)); % Computing variance of final position (x-axes) over every trial, with steps # fixed.
    walk_vary(in)=var(Pfinale(:,2)); % Computing variance of final position (y-axes) over every trial, with steps # fixed.
    
    fprintf('\nVariance over x-axis for %d steps = %f ', N, walk_varx(in));
    fprintf('\nAverage distance over x-axis (sqrt of var(X)/2) = %f', sqrt(walk_varx(in)));
    fprintf('\nVariance over y-axis for %d steps = %f ', N, walk_vary(in));
    fprintf('\nAverage distance over y-axis (sqrt of vari(Y)/2) = %f\n', sqrt(walk_vary(in)));
    fprintf('\nAverage distance = %f\n', sqrt(walk_varx(in)+ walk_vary(in)));

end
figure, hold on
plot(NN,walk_varx,'ro-')
xlabel('Nr step N')
plot(NN,walk_vary,'bo--')
xlabel('Nr step N')
title('Variance of final position')
hold off

