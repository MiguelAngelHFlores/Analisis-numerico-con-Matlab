%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Método del punto fijo')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,el punto de inicio,así como
%porcentaje de error
f =input('Introduzca la función f(x):');
xi =input('Introduzca el punto de inicio:');
err =input('Porcentaje de error :');
%Graficamos la función
ezplot(f), grid on
f =inline(f);
j =0;
ea =100;
while err <= ea
%Aproximamos la raiz con la fórmula correspondiente
xr=f(xi);
%Calculamos el porcentaje de error
ea=abs(((xr-xi)/xr)*100);
xi=xr;
j=j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la raíz=%10.3f en %4d iteraciones\n',xr,j);