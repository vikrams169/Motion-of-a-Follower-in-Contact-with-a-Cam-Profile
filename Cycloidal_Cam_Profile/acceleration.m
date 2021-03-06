function acc=acceleration(v,w,h,phi,d1)
    acc=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            acc(i)=0
        elseif v(i)<phi 
            acc(i)=(2*h*pi*(w^2)/((phi-d1)^2))*(sin(2*pi*(v(i)-d1)/(phi-d1)))
        elseif v(i)>2*pi-phi
            acc(i)=(2*h*pi*(w^2)/((phi-d1)^2))*(sin(2*pi*(2*pi-v(i)-d1)/(phi-d1)))
        else
            acc(i)=0;
        end
    end
end


