/* Programa 5: Realice un programa calcule la 
			   división entera entre dos números enteros. */

#include <iostream> 
#include <string> 

using namespace std;

int main(){

	int divisor, dividendo, residuo, cociente=0; 
	cout<<"Ingrese el dividendo: "; 
	cin>>dividendo; 

	cout<<"Ingresar el divisor: "; 
	cin>>divisor; 

	while(dividendo>divisor)
	{ 
		dividendo=dividendo-divisor; 
		cociente=cociente+1; 
	} 

	residuo=dividendo; 
	cout<<"El resultado de la division es " <<cociente<< " y el residuo es "<<residuo;
	system(" pause");
	return 0;
}
