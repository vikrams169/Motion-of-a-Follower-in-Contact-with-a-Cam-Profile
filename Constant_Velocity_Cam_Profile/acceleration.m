function acc=acceleration(v,w,h,phi,d1)
    acc=zeros([1,length(v)]);
    for i=1:length(v)
        if v(i)==d1 || v(i)==2*pi-d1
            acc(i)=inf;
        elseif v(i)==phi || v(i)==2*pi-phi 
            acc(i)=inf;
        else
            acc(i)=0;
        end
    end
end

