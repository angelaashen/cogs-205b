function yax = cdf(obj, xax)
% CDF Cumulative distribution function for Norm2d

validateattributes(xax,{'numeric'}, {'ndims',2,'nrows',2});
try
    % mvncdf takes Nx2 vector
    yax = transpose( mvncdf(transpose(xax), transpose(obj.Mean), obj.Covariance));
catch e
    error(e.message);
end

end