function j=jerk(v,w,h,phi,d1)
    j=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            j(i)=0
        elseif v(i)<phi 
            j(i)=(4*h*(pi^2)*(w^3)/((phi-d1)^3))*(cos(2*pi*(v(i)-d1)/(phi-d1)))
        elseif v(i)>2*pi-phi
            j(i)=-(4*h*(pi^2)*(w^3)/((phi-d1)^3))*(cos(2*pi*(2*pi-v(i)-d1)/(phi-d1)))
        else
            j(i)=0;
        end
    end
end
