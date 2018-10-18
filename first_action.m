
function [P_1, T_1] = first_action(P_0, T_0, angle)
    
    %function rotates object for angle on the x coordinate axis
    %of the world coordinate system
    
    %rotation around x axis for angle degrees
    T_rot = [   1 0 0 0;
                0 cosd(angle) -sind(angle) 0;
                0 sind(angle)  cosd(angle) 0;
                0 0 0 1];
                  
    %calculating new transformation matrix        
    T_1 = T_rot * T_0;

    %calculating new position matrix 
    P_1 = T_1 * P_0;
    
end

