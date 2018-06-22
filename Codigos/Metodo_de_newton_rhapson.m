%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo de Newton Raphson')
%Damos de alta la variable simb�lica X
syms x
%Introducimos la funci�n,el punto de inicio,as� como
%porcentaje de error
f=input('Introduzca la funci�n f(x):');
pi=input('Introduzca el punto de inicio:');
err=input('Porcentaje de error:');
%Graficamos la funci�n
ezplot(f)
grid on
%Calculamos la derivada de la funci�n
d=diff(f);
d=inline(d);
f=inline(f);
ea=100;
j=0;
while ea>err
%Aproximamos la raiz con la f�rmula correpondiente
xi=pi-(f(pi)/d(pi));
%Calculamos el porcentaje de error
ea=abs(((xi-pi)/xi)*100);
pi=xi;
j=j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)