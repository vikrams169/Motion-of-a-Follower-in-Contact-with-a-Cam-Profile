function displ=displacement(v,h,phi,d1)
    displ=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)<d1 || v(i)>2*pi-d1
            displ(i)=0;
        elseif v(i)<phi 
            displ(i)=h*(v(i)-d1)/(phi-d1);
        elseif v(i)>2*pi-phi
            displ(i)=h*(2*pi-v(i)-d1)/(phi-d1)
        else
            displ(i)=h;
        end
    end
end