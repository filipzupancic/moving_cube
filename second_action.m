
function [P_2, T_2] = second_action(P_0, T_1, x)

    %function translates object 3 units on the Z axis of the 
    %current object coordinate system
    
    %translation matrix
    T_translate = [1 0 0 0;
                   0 1 0 0;
                   0 0 1 x;
                   0 0 0 1];

    %calculating new position and translation matrices
    T_2 = T_1 * T_translate;
        
    P_2 = T_2 * P_0; 

end

