%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo de la secante')
%Damos de alta la variable simb�lica X
syms x
%Introducimos la funci�n,los puntos xi-1,xi,as� como el
%porcentaje de error
f=input('Ingrese la funci�n f(x):');
x1=input('Ingrese el punto xi-1:');
x2=input('Ingrese el punto xi:');
err=input('Porcentaje de error:');
%Graficamos la funci�n
ezplot(f)
grid on
f=inline(f);
ea=100;
i=0;
%Imprimiremos en pantalla una tabla con las raices aproximadas por cada
%iteraci�n
fprintf('Iteraci�n: Raiz\n')
while ea>err
%Aproximamos la raiz con la f�rmula correspondiente
xi=x2-(f(x2)*(x1-x2))/(f(x1)-f(x2));
%Calculamos el porcentaje de error
ea=abs(((xi-x2)/xi)*100);
fprintf('%f %8.4f\n',i,xi)
x1=x2;
x2=xi;
i=i+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz de la funci�n:%10.3f\nCalculada en %4.0fIteraciones\n',xi,i)