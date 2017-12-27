function [result] = mygauss(x, mean, sigma)

norm = 1.0/(sqrt(2*pi) * sigma);
exponent = -1.0*((x - mean) ./ sigma).^2;
result = norm * exp(exponent);

end