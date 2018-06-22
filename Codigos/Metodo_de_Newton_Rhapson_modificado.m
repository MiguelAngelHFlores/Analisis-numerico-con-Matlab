%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Método de Newton Raphson modificado')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,el punto de inicio,así como
%porcentaje de error
f=input('Introduzca la función f(x):');
pi=input('Introduzca el punto de inicio:');
err=input('Porcentaje de error:');
%Graficamos la función
ezplot(f)
grid on
%Calculamos 1er y 2a derivada de la función
dx=diff(f);
dx2=diff(dx);
f =inline(f);
dx =inline(dx);
dx2 =inline(dx2);
ea =100;
j =0;
while ea>err
%Aproximamos la raiz con la fórmula correspondiente
xi=pi-(f(pi)*dx(pi))/((dx(pi)^2)-(f(pi)*dx2(pi)));
%Calculamos el porcentaje de error
ea=abs(((xi-pi)/xi)*100);
pi=xi;
j =j+1;
end
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nResultado de la raíz=%10.3f en %4d iteraciones\n',pi,j);