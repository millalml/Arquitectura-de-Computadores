/* Programa 4: Hacer un programa que calcule el
			   factorial de un numero entero sin signo. */

#include <iostream> 
#include <string> 

using namespace std;

int main() { 

	int factorial=0; 
	int n=0;
	cout<<"Ingresar numero para calcular el factorial: "; 
	cin>>n;
	cin>>factorial; 

	int temp=factorial-1; 
	int resultado=factorial; 

	while (temp>=1) 
	{ 
		resultado=resultado*temp; 
		temp--; 
	} 
	cout<<"El factorial de " << n << " es: " <<resultado<<endl; 
} 

