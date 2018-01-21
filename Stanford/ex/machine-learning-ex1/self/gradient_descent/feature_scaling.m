function [scaled_x] = feature_scaling (x)
    
    mu = mean(x);
    sigma = std(x);
    scaled_x = (x - mu) ./ sigma;
    
endfunction
