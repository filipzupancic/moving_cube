
function [] = perform_actions()
    
    %it serves as the "main" function 
    %to run the program we start with this function
    %it calls actions in order 1, 2, 3, 4 and does it repeatedly until the
    %program is stopped

    %defining T [world, object] matrix
    T_0 = [ 0 -1  0  5; 
            0  0 -1 -2; 
            1  0  0  3; 
            0  0  0  1];

    %position matrix we use to construct the cube
    P_0 = [ 0 1 1 0 0 1 1 0; 
            0 0 0 0 1 1 1 1;
            0 0 1 1 0 0 1 1;
            1 1 1 1 1 1 1 1];
        
    %Open new figure. We're going to draw only in this window.    
    figure;
    
    %serves as a loop. actions are run continuously. 1, 2, 3, 4, 
    %1, 2, 3, 4.. until we stop execution
    while(1)
        
        %perform first action
        %rotation for 30 degrees
        for angle=1:30   

            %we are clearing the figure and draw another position
            %could be probably implememnted more efficiently 
            clf('reset');
            axis([-10 10 -10 10 -10 10]);
            xlabel('x'); ylabel('y'); zlabel('z');
            grid;
            
            %calling first_action function that returns new position and
            %transformation matrix
            [P_1, T_1] = first_action(P_0, T_0, angle);
            
            %draw a cube in space
            draw_object(P_1);
            
        end
        
        %perform second_action 
        for units = 1:3    
            
            %we are clearing the figure and draw another position
            %could be probably implememnted more efficiently
            clf('reset');
            axis([-10 10 -10 10 -10 10]);
            xlabel('x'); ylabel('y'); zlabel('z');
            grid;
            
            %calling second_action function that returns new position and
            %transformation matrix
            [P_2, T_2] = second_action(P_0, T_1, units);
            
            %start drawing
            draw_object(P_2);
            
        end
         
        
        %perform third action 
        for x=1:45   

            %negative angles to -45 degrees
            angle = x*(-1);
            
            %we are clearing the figure and draw another position
            %could be probably implememnted more efficiently
            clf('reset');
            axis([-10 10 -10 10 -10 10]);
            xlabel('x'); ylabel('y'); zlabel('z');
            grid;
            
            %calling third_action function that returns new position and
            %transformation matrix
            [P_3, T_3] = third_action(P_0, T_0, T_2, angle);
            
            %start drawing
            draw_object(P_3);
            
        end
        
        %perform fourth action
        %rotation for 90 degrees
        for angle=1:90   

            %we are clearing the figure and draw another position
            %could be probably implememnted more efficiently
            clf('reset');
            axis([-10 10 -10 10 -10 10]);
            xlabel('x'); ylabel('y'); zlabel('z');
            grid;
            
            %calling fourth_action function that returns new position and
            %transformation matrix
            [P_4, T_4] = fourth_action(P_0, T_3, angle);
            
            %start drawing
            draw_object(P_4);
            
        end

    end

end

