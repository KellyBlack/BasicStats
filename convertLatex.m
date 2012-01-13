function [output] = convertLatex(A)
    
    [n,m] = size(A)
    
    output = '\rowOpsFour';
    for j=1:n
        for k = 1:m
            output = strcat(output,sprintf('{%g}',A(j,k)));
        end
    end
    
    
