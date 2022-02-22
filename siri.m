function Rs = siri(R,n1,n2)
%% Preparation
r= size(R,1);
count=0;

%% Checking and calculating series
for i=1:r
    if R(i,1:2)==zeros(1,2)
        continue;
    end
    for j=1:r
        if i==j
            continue;
        end
        com=check(R(i,:),R(j,:)); %% common node checking
        if com(1)==0 | com(1)==n1 | com(1)==n2
            continue;
        else
            if ex_branch(com(1),i,j,R) %% if extra branch common node 
                                        %%then  no series 
                continue;
            else %% series done
                R(i,:)=[R(i,com(2)) R(j,com(3)) R(i,3)+R(j,3)];
                R(j,:)=[0 0 0];
            end
        end
    end
    count = count+1;
end
%% Creating output

Rs=output(count,R);

end