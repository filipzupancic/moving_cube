
function [] = draw_object(P)
        
        %function draws an object in a world
        %from a position matrix P 
        
        hold on; 

        %draw the cube in space using fill3 function

        %1st square
        X1 = [P(1,1) P(1,2) P(1,3) P(1,4)];
        Y1 = [P(2,1) P(2,2) P(2,3) P(2,4)];
        Z1 = [P(3,1) P(3,2) P(3,3) P(3,4)];
        C1 = [P(4,1) P(4,2) P(4,3) P(4,4)];

        fill3(X1, Y1, Z1, C1);

        hold on;

        %2nd square

        X2 = [P(1,1) P(1,2) P(1,6) P(1,5)];
        Y2 = [P(2,1) P(2,2) P(2,6) P(2,5)];
        Z2 = [P(3,1) P(3,2) P(3,6) P(3,5)];
        C2 = [P(4,1) P(4,2) P(4,6) P(4,5)];

        fill3(X2, Y2, Z2, C2);

        hold on;

        %3rd square 

        X3 = [P(1,1) P(1,4) P(1,8) P(1,5)];
        Y3 = [P(2,1) P(2,4) P(2,8) P(2,5)];
        Z3 = [P(3,1) P(3,4) P(3,8) P(3,5)];
        C3 = [P(4,1) P(4,4) P(4,8) P(4,5)];

        fill3(X3, Y3, Z3, C3);

        hold on;

        %4th square

        X4 = [P(1,5) P(1,6) P(1,7) P(1,8)];
        Y4 = [P(2,5) P(2,6) P(2,7) P(2,8)];
        Z4 = [P(3,5) P(3,6) P(3,7) P(3,8)];
        C4 = [P(4,5) P(4,6) P(4,7) P(4,8)];

        fill3(X4, Y4, Z4, C4);

        hold on;

        %5th square

        X5 = [P(1,2) P(1,3) P(1,7) P(1,6)];
        Y5 = [P(2,2) P(2,3) P(2,7) P(2,6)];
        Z5 = [P(3,2) P(3,3) P(3,7) P(3,6)];
        C5 = [P(4,2) P(4,3) P(4,7) P(4,6)];

        fill3(X5, Y5, Z5, C5);

        hold on;

        %6th square

        X5 = [P(1,3) P(1,4) P(1,8) P(1,7)];
        Y5 = [P(2,3) P(2,4) P(2,8) P(2,7)];
        Z5 = [P(3,3) P(3,4) P(3,8) P(3,7)];
        C5 = [P(4,3) P(4,4) P(4,8) P(4,7)];

        fill3(X5, Y5, Z5, C5);

        hold on;
        
        %delay for better performance 
        pause(0.1);
        
end

