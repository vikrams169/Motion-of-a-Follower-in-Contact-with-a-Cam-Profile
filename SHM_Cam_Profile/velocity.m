function vel=velocity(v,w,h,phi,d1)
    vel=zeros([1,length(v)])
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            vel(i)=0
        elseif v(i)<phi
            vel(i)=(h/2)*(pi*w/(phi-d1))*(sin(pi*(v(i)-d1)/(phi-d1)));
        elseif v(i)>2*pi-phi
            vel(i)=-(h/2)*(pi*w/(phi-d1))*(sin(pi*(2*pi-v(i)-d1)/(phi-d1)));
        else
            vel(i)=0;
        end
    end
end
