%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Método de la bisección')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,los límites superior e inferior,así como
%porcentaje de error
f =input('Introduzca la función f(x):');
xa =input('Introduzca el valor de Xa :');
xb =input('Introduza el valor de Xb :');
err =input('Porcentaje de error :');
%Graficamos la función
ezplot(f), grid on
f =inline(f);
erro=100;
xr =0;
i =0;
%Comprobamos que la función cambie de signo en el intervalo
%Si f(xa).f(xr)<0 resuélvase xb=xr
if f(xa)*f(xb)<0
while erro>err
i=i+1;
ea=xr;
%Aproximamos la raiz con la fórmula correspondiente
xr=(xa + xb)/2;
%Si f(xa).f(xr) >0 resuélvase xa=xr
if f(xa)*f(xr)>0
xa=xr;
else
xb=xr;
end
%Calculamos el porcentaje de error
erro=abs(((ea-xr)/xr)*100);
end
else
fprintf('No existe raíz en el intervalo dado')
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaíz=%10.3f en %4d iteraciones\n',xr,i);