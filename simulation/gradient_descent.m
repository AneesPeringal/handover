a
mode = 1;
kp_dir = -1;
kd_dir =-1;
counter =0;
Q = error(kP_z,kD_z,ref)
while abs(Q) >1
    
    if mode ==1 && dir ==1
        kP_z = 1.05*kP_z;
    elseif mode ==1 && dir == -1
        kP_z = 0.95*kP_z;
    elseif mode ==-1 && dir ==1
        kD_z = 1.05*kD_z;
    elseif mode ==-1 && dir ==-1
        kD_z =0.95*kD_z;
    end
    
    Q_new = error(kP_z,kD_z,ref)
    gradient = Q_new - Q;
    mode
    dir
    if abs(Q_new)>abs(Q)
        dir =-1*dir;
        Q = Q_new;
    else
        Q = Q_new;
    end
    if Q*Q_new <0
        mode = mode*-1;
    end
end
Q

    
function Q_new = error(kP_z,kD_z,ref)
    simout = sim("QCwithActDyn_NewPID");
    a = simout.z_out.Data;
    Q_new = sum(abs(a(6000:end)-ref(6000:end)));
    
end
    