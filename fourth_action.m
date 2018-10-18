
function [P_4, T_4] = fourth_action(P_0, T_3, angle)
    
    %function rotates a cube for 90 degrees of the world coordinate
    %system on its own Z axis 
    
    %rotation matrix
    T_rot = [cosd(angle) -sind(angle) 0 0;
             sind(angle) cosd(angle) 0 0;
             0 0 1 0;
             0 0 0 1]; 

    %new position and rotation matrices 
    T_4 = T_rot * T_3;

    P_4 = T_4 * P_0;

end

