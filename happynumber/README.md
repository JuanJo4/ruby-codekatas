# Happy number

Un número feliz es un número entero positivo al que se van sumando los cuadrados de sus dígitos sucesivamente hasta que el total de la suma sea 1 (con lo que será un número feliz).

### Por ejemplo:

	19:
		9^2 + 1^2 = 82
		8^2 + 2^2 = 68
		6^2 + 8^2 = 100
		1^2 + 0^2 + 0^2 = 1 - Es un número feliz.

Si un número no es feliz, podemos entrar en un bucle infinito, así que nuestra solución debe estar limitada a un número de pasos, por ejemplo 20. Si en esos 20 pasos no hemos tenido la respuesta correcta, informaremos al usuario de que no hemos sido capaces de averiguar si ese número es feliz.

En la [wikipedia](http://es.wikipedia.org/wiki/N%C3%BAmero_feliz) tenéis una lista de los números felices entre 1 y 500.Siendo pícaros, se puede obtener una solución pasando los números a cadenas para recorrerlas, pero es mejor si trabajamos todo el rato con números ;-)

### Fuente

[Solveet](http://www.solveet.com/exercises/El-numero-feliz/73)
User: [juanj-gonzalezp](http://www.solveet.com/juanj-gonzalezp)
