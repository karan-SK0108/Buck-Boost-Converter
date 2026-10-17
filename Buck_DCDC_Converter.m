%Buck DCDC Converter

%Input Parameter
Vin = 100; %Volts
Vout = 40; %Volts
Pout =1e3; %kW
Fsw =50e3; %Hz
I_ripple = 10/100; % 10% Ripple Current
V_ripple = 1/100; % 1% Ripple Voltage

%Duty Cycle Ratio Calculation
D=Vout/Vin;

%Switch Time Period
Ts = 1/Fsw;

%Output Parameter Calculation
Iout = Pout/Vout; %Amps
Rload = Vout/Iout; %Ohms

I_ripple = I_ripple*Iout;
V_ripple = V_ripple*Vout;

%LC Filter Calculation
L_Filter = ((Vin-Vout)*D*Ts)/I_ripple;
C_Filter = (I_ripple*Ts)/(8*V_ripple);

