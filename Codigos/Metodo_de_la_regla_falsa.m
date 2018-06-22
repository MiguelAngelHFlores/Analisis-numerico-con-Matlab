%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo de la regla falsa')
%Damos de alta la variable simb�lica X
syms x
%Introducimos la funci�n,los l�mites superior e inferior,as� como
%porcentaje de error
f =input('Introduzca la funci�n f(x):');
xa =input('Introduzca el valor de Xa :');
xb =input('Introduza el valor de Xb :');
err =input('Porcentaje de error :');
%Graficamos la funci�n
ezplot(f), grid on
f =inline(f);
erro=100;
xr =0;
i =0;
%Comprobamos que la funci�n cambie de signo en el intervalo
%Si f(xa).f(xr)<0 resu�lvase xb=xr
if f(xa)*f(xb)<0
while erro>err
ea=xr;
%Aproximamos la raiz con la f�rmula correspondiente
xr=xb-((f(xb)*(xa-xb))/(f(xa)-f(xb)));
%Si f(xa).f(xr) >0 resu�lvase xa=xr
if f(xa)*f(xr)>0
xa=xr;
else
xb=xr;
end
%Calculamos el porcentaje de error
erro=abs(((ea-xr)/xr)*100);
i=i+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la ra�z=%10.3f en %4d iteraciones\n',xr,i);
else
fprintf('No existe ra�z en el intervalo dado')
end