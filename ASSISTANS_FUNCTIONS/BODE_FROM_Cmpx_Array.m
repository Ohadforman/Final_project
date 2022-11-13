function [outputArg1,outputArg2] = BODE_FROM_Cmpx_Array(inputArg1,inputArg2)

%   inputArg1 is a complex array 
%   inputArg2 is the freq range

outputArg1 = 20.*log10(abs(inputArg1));
outputArg2 = angle(inputArg1)*180/pi;



subplot(2,1,1)
semilogx(inputArg2,outputArg1)
xlabel("Frequency[Hz]")
ylabel("Magnitude[dB]")
xlim([0,100])
grid on
subplot(2,1,2)
semilogx(inputArg2,outputArg2)
xlabel("Frequency [Hz]")
ylabel("Phase[deg]")
xlim([0,100])
grid on
set(gcf,'position',[0,0,1000,1000])
end

