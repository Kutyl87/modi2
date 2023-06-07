kmin = 1
Y_train_dyn_r = []
Y_val_dyn_r = []
if n==1
    Y_train_dyn_r = W_dyn(1)*train_datadyn(st-1,1) + W_dyn(2)*train_datadyn(st-1,2);
    Y_val_dyn_r = W_dyn(1)*val_datadyn(st-1,1) + W_dyn(2)*val_datadyn(st-1,2);
    for i=st+1:size(train_datadyn,1)
        Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(i-1,1)+ W_dyn(2)*Y_train_dyn_r(i-st)];
    end
    for i=st+1:size(val_datadyn,1)
        Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(i-1,1)+ W_dyn(2)*Y_val_dyn_r(i-st)];
    end
elseif n==2
    Y_train_dyn_r = W_dyn(1)*train_datadyn(st-1,1) + W_dyn(2)*train_datadyn(st-2,1)+W_dyn(3)*train_datadyn(st-1,2) + W_dyn(4)*train_datadyn(st-2,2);
    Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(st,1) + W_dyn(2)*train_datadyn(st-1,1)+W_dyn(3)*Y_train_dyn_r(1) + W_dyn(4)*train_datadyn(st-1,2)];
    Y_val_dyn_r = W_dyn(1)*val_datadyn(st-1,1) + W_dyn(2)*val_datadyn(st-2,1)+W_dyn(3)*val_datadyn(st-1,2) + W_dyn(4)*val_datadyn(st-2,2);
    Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(st,1) + W_dyn(2)*val_datadyn(st-1,1)+W_dyn(3)*Y_val_dyn_r(1) + W_dyn(4)*val_datadyn(st-1,2)];
    % Y_val_dyn_r = W_dyn(1)*val_datadyn(st-1,1) + W_dyn(2)*val_datadyn(st-2,1)+W_dyn(3)*val_datadyn(st-1,2) + W_dyn(4)*val_datadyn(st-2,2);
    % Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(st,1) + W_dyn(2)*val_datadyn(st-1,1)+W_dyn(3)*Y_val_dyn_r(1) + W_dyn(4)*val_datadyn(st-1,2)];
    for i=st+2:size(train_datadyn,1)
        Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(i-1,1)+ W_dyn(2)*train_datadyn(i-2,1)+ W_dyn(3)*Y_train_dyn_r(i-st) + W_dyn(4)*Y_train_dyn_r(i-st-1)];
    end
    for i=st+2:size(train_datadyn,1)
        Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(i-1,1)+ W_dyn(2)*val_datadyn(i-2,1)+ W_dyn(3)*Y_val_dyn_r(i-st) + W_dyn(4)*Y_val_dyn_r(i-st-1)];
    end
elseif n==3
    Y_train_dyn_r = W_dyn(1)*train_datadyn(st-1,1) + W_dyn(2)*train_datadyn(st-2,1)+W_dyn(3)*train_datadyn(st-3,1) + W_dyn(4)*train_datadyn(st-1,2)+W_dyn(5)*train_datadyn(st-2,2)+W_dyn(6)*train_datadyn(st-3,2);
    Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(st,1) + W_dyn(2)*train_datadyn(st-1,1)+W_dyn(3)*train_datadyn(st-2,1)+ W_dyn(4)*Y_train_dyn_r(1)+W_dyn(5)*train_datadyn(st-1,2)+W_dyn(6)*train_datadyn(st-2,2)];
    Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(st+1,1) + W_dyn(2)*train_datadyn(st,1)+W_dyn(3)*train_datadyn(st-1,1)+ W_dyn(4)*Y_train_dyn_r(2)+W_dyn(5)*Y_train_dyn_r(1)+W_dyn(6)*train_datadyn(st-1,2)];
    Y_val_dyn_r = W_dyn(1)*val_datadyn(st-1,1) + W_dyn(2)*val_datadyn(st-2,1)+W_dyn(3)*val_datadyn(st-3,1) + W_dyn(4)*val_datadyn(st-1,2)+W_dyn(5)*val_datadyn(st-2,2)+W_dyn(6)*val_datadyn(st-3,2);
    Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(st,1) + W_dyn(2)*val_datadyn(st-1,1)+W_dyn(3)*val_datadyn(st-2,1)+ W_dyn(4)*Y_val_dyn_r(1)+W_dyn(5)*val_datadyn(st-1,2)+W_dyn(6)*val_datadyn(st-2,2)];
    Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(st+1,1) + W_dyn(2)*val_datadyn(st,1)+W_dyn(3)*val_datadyn(st-1,1)+ W_dyn(4)*Y_val_dyn_r(2)+W_dyn(5)*Y_val_dyn_r(1)+W_dyn(6)*val_datadyn(st-1,2)];
    for i=st+3:size(train_datadyn,1)
        Y_train_dyn_r = [Y_train_dyn_r;W_dyn(1)*train_datadyn(i-1,1) + W_dyn(2)*train_datadyn(i-2,1)+W_dyn(3)*train_datadyn(i-3,1)+ W_dyn(4)*Y_train_dyn_r(i-st)+W_dyn(5)*Y_train_dyn_r(i-st-1)+W_dyn(6)*Y_train_dyn_r(i-st-2)];
    end
    for i=st+3:size(val_datadyn,1)
        Y_val_dyn_r = [Y_val_dyn_r;W_dyn(1)*val_datadyn(i-1,1) + W_dyn(2)*val_datadyn(i-2,1)+W_dyn(3)*val_datadyn(i-3,1)+ W_dyn(4)*Y_val_dyn_r(i-st)+W_dyn(5)*Y_val_dyn_r(i-st-1)+W_dyn(6)*Y_val_dyn_r(i-st-2)];
    end
end
X_train_dyn_r = linspace(st,size(train_datadyn,1),size(train_datadyn,1)-st +1)
X_val_dyn_r = linspace(st,size(val_datadyn,1),size(val_datadyn,1)-st +1)
% title("Training set")
% xlabel("U - sygnał W_dynejściowy")
% ylabel("Y - sygnał wyjściowy")
% scatter(X_train_dyn_r, Y_train_dyn_r,"filled")
% hold on 
% scatter(X_train_dyn, Y_dyn,"filled")
% 
% err_tdr = 0;
% for i=st:size(Y_train_dyn_r)
%     err_tdr = err_tdr + (Y_train_dyn_r(i) - Y_dyn(i)).^2;
% end
% err_vdr = 0;
% for i=st:size(Y_val_dyn_r)
%     err_vdr = err_vdr + (Y_val_dyn_r(i) - Y_dyn_val_org(i)).^2;
% end