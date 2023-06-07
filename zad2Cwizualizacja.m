err_tdc = 0;
for i=1:size(Y_train_dyn_c)
    err_tdc = err_tdc + (Y_train_dyn_c(i) - Y_dyn_c(i))^2;
end
err_vdc = 0;
for i=1:size(Y_val_dyn_c)
    err_vdc = err_vdc + (Y_val_dyn_c(i) - Y_dyn_val_org_c(i))^2;
end
err_tdrc = 0;
for i=1:size(Y_cr,2)
    err_tdrc = err_tdrc + (Y_cr(i) - Y_dyn_c(i))^2;
end
err_vdrc = 0;
for i=1:size(Y_cvr,2)
    err_vdrc = err_vdrc + (Y_cvr(i) - Y_dyn_val_org_c(i))^2;
end
figure
subplot(2,1,1)
scatter(X_train_dyn,Y_train_dyn_visual(st:end),3,"filled",'r')
title("Wykres Y(k) dane trenujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
hold on
scatter(X_train_dyn,Y_train_dyn_c,3,"filled",'b')
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W',Location='southeast')
subplot(2,1,2)
scatter(X_train_dyn,Y_train_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_train_dyn, Y_cr,3,"filled",'b')
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W rekurencyjnie',Location='southeast')
title("Wykres Y(k) z rekurencją - dane trenujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
print('xxxxxx.png','-dpng','-r400')
figure
subplot(2,1,1)
scatter(X_val_dyn_visual(st:end),Y_val_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_val_dyn, Y_val_dyn_c,3,"filled",'b')
title("Wykres Y(k) dane walidujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W',Location='southeast')
subplot(2,1,2)
scatter(X_val_dyn_visual(st:end),Y_val_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_val_dyn, Y_cvr,3,"filled",'b')
title("Wykres Y(k) z rekurencją dane walidacyjne")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W rekurencyjnie',Location='southeast')

print('yyy.png','-dpng','-r400')