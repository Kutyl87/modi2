format long;
M= [ones(size(training_data,1),1),training_data(:,1)]
Mv= [ones(size(validation_data,1),1),validation_data(:,1)]
Y = training_data(:,2)
W = M\Y
U_train = training_data(:,1)
Y_train = M*W
U_val = validation_data(:,1)
Y_val = Mv * W
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
print('zad2.png','-dpng','-r400')
err_t = 0
for i=1:size(Y_train,1)
    err_t = err_t + (Y_train(i) - training_data(i,2)).^2;
end
err_v = 0;
for i=1:size(Y_val,1)
    err_v = err_v + (Y_val(i) - validation_data(i,2)).^2;
end