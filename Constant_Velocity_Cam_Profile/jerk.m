function j=jerk(v,w,h,phi,d1)
    j=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)==d1 || v(i)==2*pi-d1
            j(i)=inf;
        elseif v(i)==phi || v(i)==2*pi-phi 
            j(i)=inf;
        else
            j(i)=0;
        end
    end
end
