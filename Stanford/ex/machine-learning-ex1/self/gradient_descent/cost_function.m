function [cost, grad] = cost_function (x, y, theta)
  
    examples = length(y);
    hypothesis = x * theta - y;
    cost = (1.0 / (2 * examples)) * (hypothesis' * hypothesis);
    grad = (1.0 / examples) * (x' * hypothesis);
  
endfunction
