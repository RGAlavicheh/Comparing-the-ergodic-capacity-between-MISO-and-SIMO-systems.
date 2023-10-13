# Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems.

In this simulation, our aim is to compare the capacity of the MIMO system under different scenarios, by varying the number of transmitter and receiver antennas ($N_r, N_t$). We calculated the capacities for different values of $N_r, N_t$ and plot the results. This analysis has been conducted for both MISO and SIMO modes.

A function called ErgodicCapacity has been developed. This function takes inputs such as Niter (number of iterations), $N_r$ (number of receiver antennas), $N_t$ (number of transmitter antennas), and $SNR_{dB}$ (Signal-to-Noise Ratio in decibels). The output of the function is a vector containing the calculated capacities for each scenario.

## Ergodic Capacity formula:

<img src="https://github.com/RGAlavicheh/Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems./assets/94162828/29471865-9763-47de-9b50-0d21e1d282b1" alt="alg" width="400">

## Outputs:

<img src="https://github.com/RGAlavicheh/Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems./assets/94162828/f5861004-8671-495c-a6a8-b74bae06c397" alt="Nr" width="400">

<img src="https://github.com/RGAlavicheh/Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems./assets/94162828/219575a5-4861-4360-a7a0-755ca2e6b731" alt="Nt" width="400">

<img src="https://github.com/RGAlavicheh/Comparing-the-ergodic-capacity-between-MISO-and-SIMO-systems./assets/94162828/ba724ec1-541f-4f0a-acd6-80e3c90b2c6b" alt="NrNt" width="400">

## Reference:
This simulation is based on Chapter 3 of the book ["Introduction to MIMO Communications" by Jerry R. Hampton](https://www.google.com/books/edition/Introduction_to_MIMO_Communications/Ee_CAQAAQBAJ?hl=en&gbpv=0)

