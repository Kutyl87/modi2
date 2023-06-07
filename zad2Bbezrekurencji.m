st = 10
n = 3
if n == 1
    Y_dyn = train_datadyn(st:end,2)
    M_dyn = train_datadyn(st-1:end-1,:)
    M_dyn_val = val_datadyn(st-1:end-1,:)
    Y_dyn_val_org = val_datadyn(st:end,2)
elseif n==2
    Y_dyn = train_datadyn(st:end,2)
    M_dyn = [train_datadyn(st-1:end-1,1),train_datadyn(st-2:end-2,1),train_datadyn(st-1:end-1,2),train_datadyn(st-2:end-2,2)]
    M_dyn_val = [val_datadyn(st-1:end-1,1),val_datadyn(st-2:end-2,1),val_datadyn(st-1:end-1,2),val_datadyn(st-2:end-2,2)]
    Y_dyn_val_org = val_datadyn(st:end,2)
elseif n==3
    Y_dyn = train_datadyn(st:end,2)
    M_dyn = [train_datadyn(st-1:end-1,1),train_datadyn(st-2:end-2,1),train_datadyn(st-3:end-3,1),train_datadyn(st-1:end-1,2),train_datadyn(st-2:end-2,2),train_datadyn(st-3:end-3,2)]
    M_dyn_val = [val_datadyn(st-1:end-1,1),val_datadyn(st-2:end-2,1),val_datadyn(st-3:end-3,1),val_datadyn(st-1:end-1,2),val_datadyn(st-2:end-2,2),val_datadyn(st-3:end-3,2)]
    Y_dyn_val_org = val_datadyn(st:end,2)

end
W_dyn = M_dyn\Y_dyn;
W_dyn;
X_train_dyn = linspace(st,size(train_datadyn,1),size(train_datadyn,1)-st +1)
Y_train_dyn = M_dyn*W_dyn
X_val_dyn = linspace(st,size(val_datadyn,1),size(val_datadyn,1)-st +1)
Y_val_dyn = M_dyn_val * W_dyn;
