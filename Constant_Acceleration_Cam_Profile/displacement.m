function displ=displacement(v,w,h,phi,d1)
    displ=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            displ(i)=0
        elseif v(i)<pi/2
            displ(i)=2*h*((v(i)-d1)^2)/((phi-d1)^2);
        elseif v(i)<phi
            displ(i)=h/2+2*h*(v(i)-pi/2)/(phi-d1)-2*h*((v(i)-pi/2)^2)/((phi-d1)^2);
        elseif v(i)>3*pi/2
            displ(i)=h/2-2*h*(v(i)-3*pi/2)/(phi-d1)+2*h*((v(i)-3*pi/2)^2)/((phi-d1)^2);
        elseif v(i)>2*pi-phi
            displ(i)=h-2*h*((v(i)-2*pi+phi)^2)/((phi-d1)^2);
        else
            displ(i)=h
        end
    end
end


