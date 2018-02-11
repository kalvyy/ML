function [cost] = regularization_for_cost_function (thetas, lambda, amount)

    cost = 0;
    for i = 1 : length(thetas)
        cost = cost + sum(sum(thetas{i}(:, 2:end) .^ 2));
    end
    
    cost = cost * (lambda / (2 * amount));
    
endfunction
