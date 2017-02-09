/* Programa 1: Hacer un programa que realice la multiplicación de dos 
			   numeros enteros usando sumas (con sumas sucesivas). */

#include <conio.h>
#include <stdio.h>

int main()
{
    int acumulador, contador, n1, n2;

    printf( "\n   Introduzca el primer numero (entero): ", 163 );
    scanf( "%d", &n1 );
    printf( "\n   Introduzca el segundo numero (entero): ", 163 );
    scanf( "%d", &n2 );

    if ( n1 >= 0 && n2 >= 0 )
    {
        acumulador = 0;

        if ( n2 != 0 )
        {
            contador = 1;
            while ( contador <= n1 )
            {
                acumulador += n2;
                contador++;
            }
        }

        printf( "\n   %d * %d = %d", n1, n2, acumulador );

    }
    else
        printf( "\n   ERROR: Ambos numeros deben ser mayores o iguales que cero.", 163 );

    getch(); /* Pausa */

    return 0;
}
