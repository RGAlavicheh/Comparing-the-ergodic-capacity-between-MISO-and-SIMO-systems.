# Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems.

In this simulation, our aim is to compare the capacity of the MIMO system under different scenarios, by varying the number of transmitter and receiver antennas ($N_r and N_t$). We calculated the capacities for different values of $N_r and N_t$ and plot the results. This analysis has been conducted for both MISO and SIMO modes.

A function called ErgodicCapacity has been developed. This function takes inputs such as Niter (number of iterations), Nr (number of receiver antennas), Nt (number of transmitter antennas), and SNRdB (Signal-to-Noise Ratio in decibels). The output of the function is a vector containing the calculated capacities for each scenario.
