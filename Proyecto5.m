clc
u=1;
while(u==1)
  printf('Seleccione una opcion que desea:\n');
  printf('1.Metodo Euler mejorado \n');
  printf('2.Metodo Runge-Kutta \n');
  s=input("Seleccion: ");
  printf("\n");
  f=input('Ingrese la Ecuacion diferencial ordinaria:','s');
  f=inline(f);
  x=input('Ingrese el valor inicial de x:');
  y=input('Ingrese el valor inicial de y:');
  h=input('Ingrese la altura h:');
  x0=input('Ingrese el valor inferior del intervalo:');
  xn=input('Ingrese el valor superior del intervalo:');
  i=0;
  dydx=0;
  if (s==1)
  printf('---i-----------dy/dx--------------x--------------y\n');
  printf('%f\t%f\t%f\t%f\t\n',i,dydx,x,y);
    while(x0<xn)
      dydx=(f(x,y)+f(x+h,y+(h*f(x,y))))/2;
      i=i+1;
      x=x+h;
      y=y+h*dydx;
      printf('%f\t%f\t%f\t%f\t\n',i,dydx,x,y);
      x0=x0+h;
    endwhile
  endif
  if(s==2)
    k1=0;
    k2=0;
    k3=0;
    k4=0;
    P=0;
    printf('---i-------------x--------------K1--------------K2--------------K3--------------K4--------------y\n');
    printf('%f\t%f\t%f\t%f\t%f\t%f\t%f\t\n',i,x,k1,k2,k3,k4,y);
    while(x0<xn)
      k1=f(x,y);
      k2=f(x+0.5*h,(y+0.5*k1*h));
      k3=f(x+0.5*h,(y+0.5*k2*h));
      k4=f(x+h,(y+k3*h));
      P=y+(h/6)*(k1+2*k2+2*k3+k4);
      i=i+1;
      x=x+h;
      y=P;
      printf('%f\t%f\t%f\t%f\t%f\t%f\t%f\t\n',i,x,k1,k2,k3,k4,y);
      x0=x0+h;
    endwhile
  endif
  printf("\n");
  u=input('Ingrese el nuemro uno si desea repetir o el numero cero para salir: ');
  clc
endwhile