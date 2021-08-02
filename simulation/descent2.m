Parameters;
K_z = 2;
T_aero = 2;
kP_z = 40;
kD_z = 17;
[Q(1),a] = error(ref);
R(1) = Q(1)
kP_z_iter = kP_z;
kD_z_iter = kD_z;
while Q(1)>1
    kP_z = kP_z_iter*0.95;
    kD_z = kD_z_iter;
    [Q(2),a] = error(ref);
    kP_z = kP_z_iter;
    kD_z = kD_z_iter*0.95;
    [Q(3),a] = error(ref);
    kP_z = kP_z_iter*1.05;
    kD_z = kD_z_iter;
    [Q(4),a] = error(ref);
    kP_z = kP_z_iter;
    kD_z = kD_z_iter*1.05;
    [Q(5),a] = error(ref);
    [Q_min,index] = min(Q);
    if index == 1
        print("min=1")
        break
    else 
        switch(index)
            case 2
                kP_z_iter = 0.95*kP_z_iter;
            case 3
                kD_z_iter = 0.95*kD_z_iter;
            case 4
                kP_z_iter = 1.05*kP_z_iter;
            case 5
                kD_z_iter = 1.05*kD_z_iter;
        end
        Q(1) = Q_min
        R(end+1) = Q_min;
    end
end
    

function [Q_new,a] = error(ref)
    simout = sim("QCwithActDyn_NewPID");
    a = simout.z_out.Data;
    Q_new = sum(abs(a(6000:end)-ref(6000:end)));
end
    