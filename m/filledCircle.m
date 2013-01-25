function [a] = filledCircle(x,y,r1,r2,color,N)
    
    theta = [0:N]*2.0*pi/N;
    x = x + r1*cos(theta);
    y = y + r2*sin(theta);
    a = patch(x,y,color);
    
