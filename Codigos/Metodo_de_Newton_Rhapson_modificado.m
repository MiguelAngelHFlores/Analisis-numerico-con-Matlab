%Limpiamos la pantalla y mostramos el nombre del m�todo
clear
clc
disp('M�todo de Newton Raphson modificado')
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
%Calculamos 1er y 2a derivada de la funci�n
dx=diff(f);
dx2=diff(dx);
f =inline(f);
dx =inline(dx);
dx2 =inline(dx2);
ea =100;
j =0;
while ea>err
%Aproximamos la raiz con la f�rmula correspondiente
xi=pi-(f(pi)*dx(pi))/((dx(pi)^2)-(f(pi)*dx2(pi)));
%Calculamos el porcentaje de error
ea=abs(((xi-pi)/xi)*100);
pi=xi;
j =j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la ra�z=%10.3f en %4d iteraciones\n',pi,j);