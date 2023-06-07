st = 10
k =3;
k_t =5;
Y_dyn_c = train_datadyn(st:end, 2);
if k==1
    u = train_datadyn(st-1:end-1,1)
    y = train_datadyn(st-1:end-1,2)
    uv = val_datadyn(st-1:end-1,1)
    yv = val_datadyn(st-1:end-1,2)
    if k_t == 1
        M_dyn_c = [u,y]
        M_dyn_cv = [uv,yv]
    elseif k_t ==2 
        M_dyn_c = [u,u.^2,y,y.^2]
        M_dyn_cv = [uv,uv.^2,yv,yv.^2]
    elseif k_t ==3
        M_dyn_c = [u,u.^2,u.^3,y,y.^2,y.^3]
        M_dyn_cv = [uv,uv.^2,uv.^3,yv,yv.^2,yv.^3]
    elseif k_t ==4
        M_dyn_c = [u,u.^2,u.^3,u.^4,y,y.^2,y.^3,y.^4]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,yv,yv.^2,yv.^3,yv.^4]
    elseif k_t ==5
        M_dyn_c = [u,u.^2,u.^3,u.^4,u.^5,y,y.^2,y.^3,y.^4,y.^5]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,uv.^5,yv,yv.^2,yv.^3,yv.^4,yv.^5]
    end
elseif k==2
    u = train_datadyn(st-1:end-1,1)
    y = train_datadyn(st-1:end-1,2)
    uv = val_datadyn(st-1:end-1,1)
    yv = val_datadyn(st-1:end-1,2)
    u_2 = train_datadyn(st-2:end-2,1)
    y_2 = train_datadyn(st-2:end-2,2)
    u_2v = val_datadyn(st-2:end-2,1)
    y_2v = val_datadyn(st-2:end-2,2)
    if k_t ==1
        M_dyn_c = [u,u_2,y,y_2]
        M_dyn_cv = [uv,u_2v,yv,y_2v]
    elseif k_t ==2
        M_dyn_c = [u,u.^2,u_2,u_2.^2,y,y.^2,y_2,y_2.^2]
        M_dyn_cv = [uv,uv.^2,u_2v,u_2v.^2,yv,yv.^2,y_2v,y_2v.^2]
    elseif k_t ==3
        M_dyn_c = [u,u.^2,u.^3,u_2,u_2.^2,u_2.^3,y,y.^2,y.^3,y_2,y_2.^2,y_2.^3]
        M_dyn_cv = [uv,uv.^2,uv.^3,u_2v,u_2v.^2,u_2v.^3,yv,yv.^2,yv.^3,y_2v,y_2v.^2,y_2v.^3]
    elseif k_t ==4
        M_dyn_c = [u,u.^2,u.^3,u.^4,u_2,u_2.^2,u_2.^3,u_2.^4,y,y.^2,y.^3,y.^4,y_2,y_2.^2,y_2.^3,y_2.^4]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,u_2v,u_2v.^2,u_2v.^3,u_2v.^4,yv,yv.^2,yv.^3,yv.^4,y_2v,y_2v.^2,y_2v.^3,y_2v.^4]
    elseif k_t ==5
        M_dyn_c = [u,u.^2,u.^3,u.^4,u.^5,u_2,u_2.^2,u_2.^3,u_2.^4,u_2.^5,y,y.^2,y.^3,y.^4,y.^5,y_2,y_2.^2,y_2.^3,y_2.^4,y_2.^5]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,uv.^5,u_2v,u_2v.^2,u_2v.^3,u_2v.^4,u_2v.^5,yv,yv.^2,yv.^3,yv.^4,yv.^5,y_2v,y_2v.^2,y_2v.^3,y_2v.^4,y_2v.^5]
    end
elseif k==3
    u = train_datadyn(st-1:end-1,1)
    y = train_datadyn(st-1:end-1,2)
    uv = val_datadyn(st-1:end-1,1)
    yv = val_datadyn(st-1:end-1,2)
    u_2 = train_datadyn(st-2:end-2,1)
    y_2 = train_datadyn(st-2:end-2,2)
    u_2v = val_datadyn(st-2:end-2,1)
    y_2v = val_datadyn(st-2:end-2,2)
    u_3 = train_datadyn(st-3:end-3,1)
    y_3 = train_datadyn(st-3:end-3,2)
    u_3v = val_datadyn(st-3:end-3,1)
    y_3v = val_datadyn(st-3:end-3,2)
    if k_t ==1
        M_dyn_c = [u,u_2,u_3,y,y_2,y_3]
        M_dyn_cv = [uv,u_2v,u_3v,yv,y_2v,y_3v]
    elseif k_t ==2
        M_dyn_c = [u,u.^2,u_2,u_2.^2,u_3,u_3.^2,y,y.^2,y_2,y_2.^2,y_3, y_3.^2]
        M_dyn_cv = [uv,uv.^2,u_2v,u_2v.^2,u_3v,u_3v.^2,yv,yv.^2,y_2v,y_2v.^2,y_3v, y_3v.^2]
    elseif k_t ==3
        M_dyn_c = [u,u.^2,u.^3,u_2,u_2.^2,u_2.^3,u_3,u_3.^2,u_3.^3,y,y.^2,y.^3,y_2,y_2.^2,y_2.^3,y_3,y_3.^2,y_3.^3]
        M_dyn_cv = [uv,uv.^2,uv.^3,u_2v,u_2v.^2,u_2v.^3,u_3v,u_3v.^2,u_3v.^3,yv,yv.^2,yv.^3,y_2v,y_2v.^2,y_2v.^3,y_3v,y_3v.^2,y_3v.^3]
    elseif k_t ==4
        M_dyn_c = [u,u.^2,u.^3,u.^4,u_2,u_2.^2,u_2.^3,u_2.^4,u_3,u_3.^2,u_3.^3,u_3.^4,y,y.^2,y.^3,y.^4,y_2,y_2.^2,y_2.^3,y_2.^4,y_3,y_3.^2,y_3.^3,y_3.^4]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,u_2v,u_2v.^2,u_2v.^3,u_2v.^4,u_3v,u_3v.^2,u_3v.^3,u_3v.^4,yv,yv.^2,yv.^3,yv.^4,y_2v,y_2v.^2,y_2v.^3,y_2v.^4,y_3v,y_3v.^2,y_3v.^3,y_3v.^4]
    elseif k_t ==5
        M_dyn_c = [u,u.^2,u.^3,u.^4,u.^5,u_2,u_2.^2,u_2.^3,u_2.^4,u_2.^5,u_3,u_3.^2,u_3.^3,u_3.^4,u_3.^5,y,y.^2,y.^3,y.^4,y.^5,y_2,y_2.^2,y_2.^3,y_2.^4,y_2.^5,y_3,y_3.^2,y_3.^3,y_3.^4,y_3.^5]
        M_dyn_cv = [uv,uv.^2,uv.^3,uv.^4,uv.^5,u_2v,u_2v.^2,u_2v.^3,u_2v.^4,u_2v.^5,u_3v,u_3v.^2,u_3v.^3,u_3v.^4,u_3v.^5,yv,yv.^2,yv.^3,yv.^4,yv.^5,y_2v,y_2v.^2,y_2v.^3,y_2v.^4,y_2v.^5,y_3v,y_3v.^2,y_3v.^3,y_3v.^4,y_3v.^5]
    end
end
W_dyn_c = M_dyn_c \ Y_dyn_c
Y_val_dyn_c = M_dyn_cv * W_dyn_c
Y_train_dyn_c = M_dyn_c * W_dyn_c
Y_dyn_val_org_c = val_datadyn(st:end, 2);