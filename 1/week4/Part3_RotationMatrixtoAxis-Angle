% In this function, you need to convert the rotation matrix R into axis-angle form

function [axang] = rotm2axang(R)
 
    %% Your code starts here
    
    
 
    vec = [0 0 0];
    theta = 0;
    theta = acos((trace(R) - 1) / 2);
    if (theta == 0)
        vec = [NaN NaN NaN];
       
    else if (theta == pi || theta == -pi)
        vec = zeros(2,3);
        vec(1,1) = sqrt(abs((R(1,1)+1)/2));
        vec(1,2) = sqrt(abs((R(2,2)+1)/2));
        vec(1,3) = sqrt(abs((R(3,3)+1)/2));
        vec(2,1) = -sqrt(abs((R(1,1)+1)/2));
        vec(2,2) = -sqrt(abs((R(2,2)+1)/2));
        vec(2,3) = -sqrt(abs((R(3,3)+1)/2));
        theta = [theta;theta];
        
    else
    vec(1) = (R(3,2) - R(2,3)) / (2 * sin(theta));
    vec(2) = (R(1,3) - R(3,1)) / (2 * sin(theta));
    vec(3) = (R(2,1) - R(1,2)) / (2 * sin(theta));
    end
    end
    axang = [vec, theta];
    %% Your code ends here

end
