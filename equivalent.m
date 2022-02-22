function Zeq = equivalent(Z,n1,n2)

% n1 and n2 are the start and end nodes.and they must never change
r = size(Z,1);

while r~=1
    Z=para(Z);
    while 1
        Z=siri(Z,n1,n2);
        r1=size(Z,1);
        if r1==r
            break
        end
        r=r1;
    end
end
Z;
Zeq=Z(3);
end