data = load('danestat33.txt')
size_data = size(data);
rng(42);
p = 0.75
idx = randperm(size_data(1))
training_length = round(p*size_data(1));
training_data = data(idx(1:training_length),:) ;
validation_data = data(idx(training_length+1:end),:)

figure 
scatter(data(:,1),data(:,2),25,"filled",'r')
title("Wizualizacja danych z polecenia - wszystkie dane")
xlabel("U - sygnał Wejściowy")
ylabel("Y - sygnał wyjściowy")
print('Wszystkiedanezad1.png','-dpng','-r400')
figure

subplot(2,1,1)
scatter(training_data(:,1),training_data(:,2),25,"filled",'r')
title("Dane trenujące")
xlabel("U - sygnał Wejściowy")
ylabel("Y - sygnał wyjściowy")
subplot(2,1,2)
scatter(validation_data(:,1),validation_data(:,2),25,"filled",'r')
title("Dane walidujące")
xlabel("U - sygnał Wejściowy")
ylabel("Y - sygnał wyjściowy")
print('Podzialzad1.png','-dpng','-r400')
% figure
% scatter(u,y)
% title("Training set")
% xlabel("U - sygnał wejściowy")
% ylabel("Y - sygnał wyjściowy")




