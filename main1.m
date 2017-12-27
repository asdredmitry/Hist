function main1(unleaded_price,unleaded_time)
  change = conv(unleaded_price, [-1 1]);
len = length(unleaded_price);
returns = change(2:len) ./ unleaded_price(2:len);
returns = 100.0 * returns; % convert to percent
plot(unleaded_time(2:len), returns, 'g;return;');
title('Returns on Gas');
xlabel('Year');
ylabel('Return (Percent)');
print('gas_returns.jpg');

printf('making plot 2\n');
fflush(stdout);

figure(4)
hist(returns, 100, 1.0);
title('Normalized Returns');
xlabel('Return (Percent)');
ylabel('Normalized Counts');
print('hist_norm_returns.jpg');

printf('making plot 5\n');
fflush(stdout);

figure(5)
m = mean(returns);
sigma = std(returns);
x = (-100:100);
plot(x, mygauss(x, m, sigma));
title('Gaussian with Same Mean/Standard Deviation');
xlabel('Return (Percent)');
ylabel('Probability');
print('gauss_model.jpg');
% let user know processing is done
% in case figure does not pop in front

k_returns = kurtosis(returns);

check = sigma*randn(1, length(returns)) + m;
k_check = kurtosis(check);
m_check = mean(check);
sigma_check = std(check);

printf('making plot 6\n');
fflush(stdout);

figure(6)
hist(check, 100, 1.0);
title('Histogram of Gaussian Model');
xlabel('Percent Chnage');
ylabel('Counts');
print('hist_gauss.jpg');

printf('ALL DONE');
fflush(stdout);
beep()
endfunction