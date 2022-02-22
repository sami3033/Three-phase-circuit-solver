function R1=output(count,R)
%function used for output
R1=zeros(count,3);
j=1;
for i=1:size(R,1)
    if R(i,1:2)==zeros(1,2)
        continue;
    end
    R1(j,:)=R(i,:);
    j=j+1;
end

end