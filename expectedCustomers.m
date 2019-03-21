userCount = 10000;

months = [0:0.001:12];
kL = months .* (userCount/12);
kE = (nthroot(userCount,12) .^ months);
kExpected = ((kL + (2.*kE)) ./ 3);
plot(months,kL,'b');
hold on;
plot(months,kE,'r');
hold on;
plot(months,kExpected,'g');

axis([0 12 0 userCount]);

july = kExpected(:,1);
august = kExpected(:,1001);
september = kExpected(:,2001);
october = kExpected(:,3001);
november = kExpected(:,4001);
december = kExpected(:,5001);

clc;

ispis = ['JUL:',num2str(july),
		 ', AUG:',num2str(august),
		 ', SEPT:',num2str(september),
		 ', OCT:',num2str(october),
		 ', NOV:',num2str(november),
		 ', DEC:',num2str(december)];

disp(ispis)





