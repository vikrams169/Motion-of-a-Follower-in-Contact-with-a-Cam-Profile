function acc=acceleration(v,w,h,phi,d1)
    acc=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            acc(i)=0
        elseif v(i)<pi/2
            acc(i)=4*h*(w^2)/((phi-d1)^2);
        elseif v(i)<phi
            acc(i)=-4*h*(w^2)/((phi-d1)^2);
        elseif v(i)>3*pi/2
            acc(i)=4*h*(w^2)/((phi-d1)^2);
        elseif v(i)>2*pi-phi
            acc(i)=-4*h*(w^2)/((phi-d1)^2);
        else
            acc(i)=0
        end
    end
end

