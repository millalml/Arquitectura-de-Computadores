/* Programa 3: Hacer un programa que calcule el polinomio(pol) de grado n, en donde los coeficientes 
			   del polinomio se encuentran almacenados en un vector k de n+1 posiciones. */

#include <iostream> 
#include <string> 

using namespace std;

int main()
{
   int n, i;
 
   cout<<"Ingrese el numero de coeficientes n";
   cin>>n;
 
   int k[i]; 
   int x;
 
   for (int i = 0; i < n; i++) 
   {
      cout<<"El coeficiente a" <<i<< " = ";
      cin>>k[i];
   }
 
   cout<<"Ingrese un valor para x";
   cin>>x;
 
   int valor=evalua(k, n, x);
   cout<<"El valor numerico p " <<x<< " = "<<valor<<endl;
 
   cin.get();
   cin.get();
   return 0;
}
 
int evalua(int k[], int n, int x) {
   int p = 0;
   for (int i = 0; i < n; i++) 
   {
      p = p + k[i] * pow(x, i);
   }
 
   return p;
}
