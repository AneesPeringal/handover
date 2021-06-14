a = min(find(data(9,:)'==1));
data = data(:,a:end);
motor = motor(:,a:end);
clear a

