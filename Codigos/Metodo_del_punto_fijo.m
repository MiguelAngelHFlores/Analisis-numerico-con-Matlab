%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo del punto fijo')
%Damos de alta la variable simb�lica X
syms x
%Introducimos la funci�n,el punto de inicio,as� como
%porcentaje de error
f =input('Introduzca la funci�n f(x):');
xi =input('Introduzca el punto de inicio:');
err =input('Porcentaje de error :');
%Graficamos la funci�n
ezplot(f), grid on
f =inline(f);
j =0;
ea =100;
while err <= ea
%Aproximamos la raiz con la f�rmula correspondiente
xr=f(xi);
%Calculamos el porcentaje de error
ea=abs(((xr-xi)/xr)*100);
xi=xr;
j=j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la ra�z=%10.3f en %4d iteraciones\n',xr,j);