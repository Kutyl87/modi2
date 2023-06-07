
N = 6
if N==1
    M= [ones(size(training_data,1),1),u]
    M_valid = [ones(size(validation_data,1),1),u_val]
elseif N==2
    M= [ones(size(training_data,1),1),u,u.^2]
    M_valid = [ones(size(validation_data,1),1),u_val,u_val.^2];
elseif N==3
    M= [ones(size(training_data,1),1),u,u.^2,u.^3]
    M_valid = [ones(size(validation_data,1),1),u_val,u_val.^2,u_val.^3];
elseif N==4
    M= [ones(size(training_data,1),1),u,u.^2,u.^3,u.^4]     
    M_valid = [ones(size(validation_data,1),1),u_val,u_val.^2,u_val.^3,u_val.^4];
elseif N==5
    M= [ones(size(training_data,1),1),u,u.^2,u.^3,u.^4,u.^5]
    M_valid = [ones(size(validation_data,1),1),u_val,u_val.^2,u_val.^3,u_val.^4,u_val.^5];
elseif N==6
    M= [ones(size(training_data,1),1),u,u.^2,u.^3,u.^4,u.^5,u.^6]
    M_valid = [ones(size(validation_data,1),1),u_val,u_val.^2,u_val.^3,u_val.^4,u_val.^5,u_val.^6];
end
Y = training_data(:,2)
W = M\Y
U_train = training_data(:,1)
Y_train = M*W
U_val = validation_data(:,1)
Y_val = M_valid * W
subplot(2,1,1)
scatter(U_train,Y_train,25,"filled",'r')
title("Dane trenujące wyliczone")
xlabel("U - sygnał Wejściowy")
ylabel("Y - sygnał wyjściowy")
hold on
scatter(training_data(:,1),training_data(:,2),25,"filled",'b')
legend("Dane wyznaczone za pomocą modelu","Dane z pliku",'Location','southeast')
subplot(2,1,2)
scatter(U_val,Y_val,25,"filled",'r')
hold on
scatter(validation_data(:,1),validation_data(:,2),25,"filled",'b')
title("Dane walidujące")
xlabel("U - sygnał Wejściowy")
ylabel("Y - sygnał wyjściowy")
legend("Dane wyznaczone za pomocą modelu","Dane z pliku",'Location','southeast')
print('zad3N6.png','-dpng','-r400')
err_t = 0;
for i=1:size(Y_train,1)
    err_t = err_t + (Y_train(i) - training_data(i,2)).^2;
end
err_v = 0;
for i=1:size(Y_val,1)
    err_v = err_v + (Y_val(i) - validation_data(i,2)).^2;
end