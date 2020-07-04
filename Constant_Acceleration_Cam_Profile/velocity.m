function vel=velocity(v,w,h,phi,d1)
    vel=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            vel(i)=0
        elseif v(i)<pi/2
            vel(i)=4*h*w*(v(i)-d1)/((phi-d1)^2);
        elseif v(i)<phi
            vel(i)=2*h*w/(phi-d1)-4*h*w*(v(i)-pi/2)/((phi-d1)^2);
        elseif v(i)>3*pi/2
            vel(i)=-2*h*w/(phi-d1)+4*h*w*(v(i)-3*pi/2)/((phi-d1)^2);
        elseif v(i)>2*pi-phi
            vel(i)=-4*h*w*(v(i)-2*pi+phi)/((phi-d1)^2);
        else
            vel(i)=0
        end
    end
end
