vel_cntrl(0.5)

function A = vel_cntrl(c)
    A = [255 255 1 7 3 30 144 1 0 0]; %closed
    if c == 1
        A(7) = 20;
        A(8) = 3;
        A = checksum(A);
    
    
    else
        b=400;
        y = 390*c +10;
        while b>=0
            if A(7)<255
                A(7)= A(7)+y
                b = b-y;
                
            else
                A(7) =255;
                A(8) = A(8)+1;
            end
        end 
    end
        A = checksum(A)
end

function A = checksum(B)
    s = dec2bin(sum(B));
    ones_compliment = not(s-'0');
    summ=-2;
    for i =0:7
        summ = summ + ones_compliment(length(ones_compliment)-i)*(2^i)
    end

    B(end+1) = summ
    A = B
end



 