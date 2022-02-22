function y=ex_branch(com,i,j,R)
%checking if extra brance exists
y=0;
for k=1:size(R,1)
    if k==i || k==j
        continue;
    end
    if R(k,1)==com || R(k,2)==com
        y=1;
        break;
    end
end

end