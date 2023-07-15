%In this simulation, our aim is to compare the capacity of the MIMO
% system under different scenarios, by varying the number of transmitter
% and receiver antennas ($N_r, N_t$). We calculated the capacities for
% different values of $N_r, N_t$ and plot the results. This analysis has 
% been conducted for both MISO and SIMO modes.
%Author: Reza Ghasemi Alavicheh[r.ghasemi.reza@gmail.com]

clc;clear;
Nr = 10 ;
Nt = 1;
SNRdB = [0 10 20 30];
Niter = 2000;
figure;
ll = ['*' '+' '^' '>'];
c = ["[0.8 0.2 0.7]" "[0.7 0.1 0.2]" "[0.3 0.4 0.6]" "[0.7 0.4 0.1]" ];
for k = 1:1:length(SNRdB)
    
    [C, Nr_vec] = ErgodicCapacity(SNRdB(k),Nt,Nr,Niter);
    plot(Nr_vec,C,LineWidth=1.6,Marker = ll(k),MarkerEdgeColor="k",Color = c(k));
    xlim([1 Nr]);
    ylim([0 20]);
    grid on;
    hold on;
    
end
legend('SNR =0dB', 'SNR =10dB', 'SNR =20dB', "SNR =30dB");
xlabel('N_r');
ylabel('channel capacity (bps/Hz)');

%% Nt and Nr =1
Nr = 1 ;
Nt = 10;
SNRdB = [0 10 20 30];
Niter = 2000;
figure;
ll = ['*' '+' '^' '>'];
c = ["[0.1 0.2 0.3]" "[0.2 0.2 0.5]" "[0.2 0.9 0.5]" "[0.2 0.1 0.9]" ];
for k = 1:1:length(SNRdB)
    
    [C, Nr_vec] = ErgodicCapacity(SNRdB(k),Nt,Nr,Niter);
    plot(Nr_vec,C,LineWidth=1.6,Marker = ll(k),MarkerEdgeColor="k",Color = c(k));
    xlim([1 Nt]);
    ylim([0 11]);
    grid on;
    hold on;
    
end
legend('SNR =0dB', 'SNR =10dB', 'SNR =20dB', "SNR =30dB");
xlabel('N_t');
ylabel('channel capacity (bps/Hz)');

%% Nt = Nr = N
N =10;
Nr = N ;
Nt = N;
SNRdB = [0 10 20 30];
Niter = 2000;
figure;
ll = ['*' '+' '^' '>'];
c = ["[0.6 0.8 1]" "[0.2 0.4 0.5]" "[0.2 0.9 0.5]" "[0.2 0.9 0.9]" ];
for k = 1:1:length(SNRdB)
    
    [C, Nr_vec] = ErgodicCapacity(SNRdB(k),Nt,Nr,Niter);
    plot(Nr_vec,C,LineWidth=1.6,Marker = ll(k),MarkerEdgeColor="k",Color = c(k) );
    xlim([1 N]);
    ylim([0 90]);
    grid on;
    hold on;
    
end
legend('SNR =0dB', 'SNR =10dB', 'SNR =20dB', "SNR =30dB");
xlabel('N_t = N_r = N');
ylabel('channel capacity (bps/Hz)');