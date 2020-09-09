function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

n = size(X)
n=n(2)


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
mu = zeros(1,n);
sigma = zeros(1,n);
X_norm = X;
for i = 1:n
    mu(i)=mean(X(:,i));
    sigma(i)=std(X(:,i));
    X_norm(:,i)=(X(:,i)-mu(i))./sigma(i);
end 
%mu =mean(X(:,1));
%sigma = std(X(:,1));
%X_norm = (X-mu)/sigma;
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
