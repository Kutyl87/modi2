Y_rec_c = []
% for i = 1:kt
%     for j = 1:k
%         if i + z ==kt
%             base_dir = train_datadyn
%         end
%     end
% end
Y_cr = [];
Y_cvr = [];
for x =1:size(train_datadyn,1)-st+1
    y_c= 0;
    y_v = 0;
    index = 0;
    for j =1 :k
        for i =1 :k_t
            index = index +1
            d_u = train_datadyn(:,1);
            d_uv = val_datadyn(:,1);
            if x -j<=0
                d_sc  =train_datadyn(:,2);
                d_scv =val_datadyn(:,2);
                coeff = 1;
            else
                d_sc = Y_cr;
                d_scv = Y_cvr;
                coeff = 0;
            end;

            y_c =y_c +  W_dyn_c(index) * d_u(st+x -j -1)^i + W_dyn_c(index + k*k_t) * d_sc(x + coeff*(st) - (1-(~coeff))-j)^i;
            y_v =y_v +  W_dyn_c(index) * d_uv(st+x -j -1)^i + W_dyn_c(index+k*k_t) * d_scv(x + coeff*(st)-(1-(~coeff))-j)^i;
        end
    end
    Y_cr = [Y_cr,y_c];
    Y_cvr = [Y_cvr,y_v];
end

