disp('0.02 sec sine wave of 100hz');
amp=4;
fs=3200;
T=1/fs;
t=0:T:0.02;
sig1=amp*sin(2*pi*100.*t);
min_sig=min(sig1);
max_sig=max(sig1);
sig=amp*sin(2*pi*100.*t);
nbits=4;
quint_level=2^nbits;
s=(max_sig-min_sig)/quint_level;
for i=min_sig:s:max_sig
    sig(sig<=i+s & sig>=i)=((2*i)+s)/2;
end
figure
stem(sig);
grid minor;
title('Sampled signal');
xlabel('Sammple Number');
ylabel('Samples');
figure
qun_error=sig1-sig;
plot(qun_error);
title('Quantized Error');
xlabel('Sample Number');
ylabel('Error');
