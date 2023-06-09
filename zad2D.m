u1=-50:0.1:50; 
ux = 0:0.1:20
uz = -20:0.1:0
% Inicjalizacja wektorów
u2 = ones(size(ux));
u3 = ones(size(uz));
options = optimoptions('fsolve', 'Display', 'final-detailed');
% Rozwiązanie równania nieliniowego dla różnych wartości x
u0 = 0; 
for i = 1:length(ux)
    u = ux(i);
    fun = @(y) (W_dyn_c(1)+W_dyn_c(6)+W_dyn_c(11))*u ...
    +(W_dyn_c(2)+W_dyn_c(7)+W_dyn_c(12))*u.^2 ...
    +(W_dyn_c(3)+W_dyn_c(8)+W_dyn_c(13))*u.^3 ...
    +(W_dyn_c(4)+W_dyn_c(9)+W_dyn_c(14))*u.^4 ...
    +(W_dyn_c(5)+W_dyn_c(10)+W_dyn_c(15))*u.^5 ...
    +(W_dyn_c(16)+W_dyn_c(21)+W_dyn_c(26)-1)*y ...
    +(W_dyn_c(17)+W_dyn_c(22)+W_dyn_c(27))*y.^2 ...
    +(W_dyn_c(18)+W_dyn_c(23)+W_dyn_c(28))*y.^3 ...
    +(W_dyn_c(19)+W_dyn_c(24)+W_dyn_c(29))*y.^4 ...
    +(W_dyn_c(20)+W_dyn_c(25)+W_dyn_c(30))*y.^5;
 % Początkowe przybliżenie x
    sol = fsolve(fun, u0);
    u2(i) = sol;
    u0 = sol;
end
u0 = 0;
for i = 1:length(uz)
    u = uz(i);
    fun = @(y) (W_dyn_c(1)+W_dyn_c(6)+W_dyn_c(11))*u ...
    +(W_dyn_c(2)+W_dyn_c(7)+W_dyn_c(12))*u.^2 ...
    +(W_dyn_c(3)+W_dyn_c(8)+W_dyn_c(13))*u.^3 ...
    +(W_dyn_c(4)+W_dyn_c(9)+W_dyn_c(14))*u.^4 ...
    +(W_dyn_c(5)+W_dyn_c(10)+W_dyn_c(15))*u.^5 ...
    +(W_dyn_c(16)+W_dyn_c(21)+W_dyn_c(26)-1)*y ...
    +(W_dyn_c(17)+W_dyn_c(22)+W_dyn_c(27))*y.^2 ...
    +(W_dyn_c(18)+W_dyn_c(23)+W_dyn_c(28))*y.^3 ...
    +(W_dyn_c(19)+W_dyn_c(24)+W_dyn_c(29))*y.^4 ...
    +(W_dyn_c(20)+W_dyn_c(25)+W_dyn_c(30))*y.^5;
 % Początkowe przybliżenie x
    sol = fsolve(fun, u0);
    u3(i) = sol;
    u0 = sol;
 end
uofc = [uz,ux]
% Narysowanie wykresu
plot(uofc, [u3,u2]);
title("Wykres y(u)")
ylabel("y - sygnał wyjściowy ")
xlabel("u - sygnał wejściowy")
grid on;
print('zad2d.png','-dpng','-r400')