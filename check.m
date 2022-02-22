function y=check(A,B)
%checking purpose
y=0;
if (A(1)==B(1) && A(2)~=B(2))
    y=[A(1) 2 2];
elseif (A(1)==B(2) && A(2)~=B(1))
    y=[A(1) 2 1];
elseif (A(2)==B(1) && A(1)~=B(2))
    y=[A(2) 1 2];
elseif (A(2)==B(2) && A(1)~=B(1))
    y=[A(2) 1 1];
end

end