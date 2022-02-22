function Rp = para(R)

%%parallel part
%% Preparation
r= size(R,1);
count=0;

%% Checking and making parallel impedances
for i=1:r
    if R(i,1:2)==zeros(1,2)
        continue;
    end
    for j=1:r
        if i==j
            continue;
        end
        
        if R(i,1:2)==R(j,1:2) | R(i,1:2)==R(j,2:-1:1)
            R(i,3) = R(i,3)*R(j,3)/(R(i,3)+R(j,3)); %formula of parallel circuit
            R(j,:) = [0 0 0];
        end
        
    end
    count= count + 1;
end

%% Creating output
Rp=output(count,R);

end