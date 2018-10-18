
function [P_3, T_3] = third_action(P_0, T_0, T_2, angle)
    
    %function rotates the object for -45 degrees on axis [1, -1, 1] of the 
    %initial object coordinate system

    %r = [1 -1 1];

    %rotation matrix 
    T_rot = [1, (-1+cosd(angle)-sind(angle)), (1-cosd(angle)-sind(angle)), 0;
             (-1+cosd(angle)+sind(angle)), 1, (-1+cosd(angle)-sind(angle)), 0;
             (1-cosd(angle)+sind(angle)), (-1+cosd(angle)+sind(angle)), 1, 0;
              0, 0, 0, 1  ]; 
    

    %new position and rotation matrices 
    T_3 = T_0 * T_rot * inv(T_0) * T_2; 

    P_3 = T_3 * P_0;
    
end

