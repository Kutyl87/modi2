figure
subplot(2,1,1)
scatter(X_train_dyn,Y_train_dyn_visual(st:end),3,"filled",'r')
title("Wykres Y(k) dane trenujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
hold on
scatter(X_train_dyn,Y_train_dyn,3,"filled",'b')
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W',Location='southeast')
subplot(2,1,2)
scatter(X_train_dyn,Y_train_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_train_dyn_r, Y_train_dyn_r,3,"filled",'b')
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W rekurencyjnie',Location='southeast')
title("Wykres Y(k) z rekurencją - dane trenujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
print('zadportren3.png','-dpng','-r400')
figure
subplot(2,1,1)
scatter(X_val_dyn_visual(st:end),Y_val_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_val_dyn, Y_val_dyn,3,"filled",'b')
title("Wykres Y(k) dane walidujące")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W',Location='southeast')
subplot(2,1,2)
scatter(X_val_dyn_visual(st:end),Y_val_dyn_visual(st:end),3,"filled",'r')
hold on
scatter(X_val_dyn_r, Y_val_dyn_r,3,"filled",'b')
title("Wykres Y(k) z rekurencją dane walidacyjne")
xlabel("K - numer próbki")
ylabel("Y - sygnał wyjściowy")
legend("Oryginalne punkty", 'Punkty obliczone za pomocą macierzy W rekurencyjnie',Location='southeast')

print('zad2porwal3.png','-dpng','-r400')
err_td = 0;
for i=1:size(Y_train_dyn)
    err_td = err_td + (Y_train_dyn(i) - Y_dyn(i))^2;
end
err_vd = 0;
for i=1:size(Y_val_dyn,1)
    err_vd = err_vd + (Y_val_dyn(i) - Y_dyn_val_org(i))^2;
end
err_tdr = 0;
for i=1:size(Y_train_dyn_r)
    err_tdr = err_tdr + (Y_train_dyn_r(i) - Y_dyn(i))^2;
end
err_vdr = 0;
for i=1:size(Y_val_dyn_r,1)
    err_vdr = err_vdr + (Y_val_dyn_r(i) - Y_dyn_val_org(i))^2;
end