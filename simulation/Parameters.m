%%
T = 8;
T_motor = 0.015;

K_roll = 30;
T_roll = 0.2005;
tau_roll = 0.025;

K_pitch = 30;
T_pitch = 0.2005;
tau_pitch = 0.025;

K_z = 1.5059; %2.966
%K_z = 2.966;
% T_aero = 1.6886;
T_aero = 1.5;

tau_z = 0.027;

tau_x = 0.0223;
tau_y = 0.0223;

%% Gain Margin = 1.3
kP_y = 34.775;
kD_y = 9.54;
kI_y = 0;
D2 = 0;

kP_x = 34.159;
kD_x = 9.3766;
kI_x = 0;
D2 = 0;

kP_z = 40;
kD_z = 17;

kP_P = 1.3542;
kD_P = 0.1529;
kP_R = 1.3852;
kD_R = 0.1564;

X_Ch = 1;
Y_Ch = 1;
PVA = 1;


%%drone parameterization
M_b = 0.267;
M_d = 0.854;
M = M_b +M_d;
J_xx = 1.0*10^-2;
J_yy = 8.2*10^-3;
j_zz = 1.48*10^-2;


%% interaction parameters
T_int = 1;
T_start = 5;
F_z = 4;
F_x = 0;
F_y = 0;
tau_theta = 0;
% 
simout= sim("QCwithActDyn_NewPID");
ref = simout.z_out.Data;
% %for i = 1.3:0.1:3
% %    K_z = i;
%     simout = sim('QCwithActDyn_NewPID.slx');
%     kD_z, min(simout.z_out.Data(5000:end))
%     plot(simout.z_out.Data)
%     hold on;
% end

