function P=randomwalk2D(N,toplot)
% Generates a 2D random walk with N steps plus initial position.

P=[0,0]; % Initial position.

xDirection=rem(randi([-1 2],N,1),2); % Generating N independent movements (-1, 0, +1) on the x axis, with probabilities 1/4, 1/2, 1/4 respectively.
yDirection=zeros(N,1); % Initialiting the yDirection vector, which depends on the value obtained in xDirection.

% Filling the yDirection vector with appropriate conditions.
for i=1:N
    if xDirection(i)==1 || xDirection(i)==-1
        yDirection(i)=0;
    else
        yDirection(i)=2*randi([0 1])-1;
    end
end

P=[P; [xDirection yDirection]]; % Movements vector.
% Obtaining each position starting from single movements in each direction.
P=cumsum(P,1); % cumulative sum at i-th step: each row represents a different point (position) on the plane (x,y).

if strcmp(toplot,'true')
    h=plot(P(:,1),P(:,2),'.-');
    xlabel(' Movement on the x-axis ');
    ylabel(' Movement on the y-axis ');
    title(' 2-D symmetric random walks ');
end

return
