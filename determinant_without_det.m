clear; clc;
% define Matrix (must be square)
matrix = magic(5)
% calling mydet function
det_matrix = mydet(matrix)
%%
function deta = mydet(R)
if size(R,1)~=size(R,2)
    error('Error.Matrix must be square.')
else
    if max(size(R))==2
        deta=(R(1,1)*R(2,2))-(R(1,2)*R(2,1));
    else
        for i=1:size(R,1)
            deta_temp=R;
            deta_temp(1,:)=[ ];
            deta_temp(:,i)=[ ];
            o=R(1,i);
            o=((-1)^(i+1));
            o=mydet(deta_temp);
            o=(R(1,i)*((-1)^(i+1))*mydet(deta_temp));
            if i==1
                deta=(R(1,i)*((-1)^(i+1))*mydet(deta_temp));
            else deta=deta+(R(1,i)*((-1)^(i+1))*mydet(deta_temp));
            end
        end
    end
end
end