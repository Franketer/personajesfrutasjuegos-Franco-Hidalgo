# Trabajo Nro°1

## Frutas
Comenzamos por modelar 3 frutas: una manzana, una mandarina y una banana.

### Manzana:
- El color inicial de la manzana es de color verde.
**Importante:** Definir los colores como objetos.
- El peso de la manzana siempre es de 150 Gr.
- Se considera que es grande si su peso es mayor a 70 Gr.
- Provee una energía de 5 Joules si es de color verde, sino 14.

### Mandarina
- El peso inicial de la mandarina es de 60 Gr.
- Se considera que es grande si su peso es mayor a 70 Gr.
- Provee una energía de 10 Joules si es grande, sino 3.
- El color de la mandarina es siempre naranja.

### Banana
- Nunca es grande.
- La energía que provee siempre es 5.
- El color siempre es amarillo.

**Nombres sugeridos de métodos:**
- `peso()`
- `esGrande()`
- `energiaQueProvee()`
- `color()`

<h2 id="Dep">Deporte</h2>
Tenemos tres deportes: el vóley, el futbol y el básquet.

### Vóley
- Cuando este es jugado por una persona, a esta última se le resta cierta cantidad de su energía. La cantidad de energía que se le resta depende:
    - La última fruta comprada fue una banana es 12.
    - La última fruta comprada fue una mandarina es 8.
    - En cualquier otro caso 5.

### Futbol
- Cuando este es jugado por una persona, a esta última se le resta cierta cantidad de su energía. La cantidad de energía que se le resta depende:
    - Si la persona no tiene baja energia 10 Joules, sino es 4 Joules.

### Básquet
- La energía consumida en este deporte es siempre 3 Joules.

**Nombres sugeridos de métodos:**
- `esJugadoPor(persona)`

## Personajes
### Martin:
- La edad inicial es de 14 años.
- La energía inicial es de 15 Joules.
- Se considera a una persona adulta cuando tiene 18 años o más.
- Hacer deporte, implica que guardar la cantidad de veces que hizo deporte y que su energía disminuya. La energía consumida por el deporte es explicada en <a href="#Dep">deporte.</a> La energía nunca puede ser un numero negativo.
- Tiene baja energía cuando el personaje es adulto y su energía es menor o igual a 2, o si no es adulto y su energía es menor o igual a 5.
- Esta feliz si la cantidad de veces que jugo es 2 o más y no tiene baja energía.
- Hacer cumplir años, implica aumentar 1 año de su edad actual.
- Hacer un metodo para comprar una fruta y que esta sea recordada. 
- Hacer madurar a la ultima fruta comprada.
    - Manzana: implica cambiar su color a rojo.
    - Mandarina: Implica incrementar su peso un 40%.
    - Banana: No tiene ningún efecto.

- Comer fruta, implica aumentar la energía de la persona, dependiendo de la energía provista por la ultima fruta comprada. Come la ultima fruta comprada, solo si se cumple la siguiente condicion:
    - Le gusta la manzana sí, es de color rojo.
    - Le gusta la mandarina si, es grande.
    - Le gusta la banana si, la persona no está feliz.
Tener en cuenta que si come la fruta, esta ya no debe ser recordada por la persona.

- Es deportista si la cantidad de veces que jugo es un numero par.

### Juana
- Inicia con una energía de 45 y un nivel de endorfina 0.
- Hacer deporte, implica que su nivel de endorfina aumente 5 y que su energía disminuya. La energía consumida por el deporte es explicada en <a href="#Dep">deporte.</a> La energía nunca puede ser un numero negativo.
- Se considera que su energía es baja, si tiene menos de 25.
- Se considera que esta feliz, si la mitad de su energía es menor que su nivel de endorfina.
- Se considera deportista si, está feliz y no tiene baja energía.
- Hacer un metodo para comprar una fruta y que esta sea recordada. 

### Pepe
- Inicia con una energía de 25, fuerza 0 y su peso en 80.
- Hacer deporte, implica que su fuerza aumente 3 y su energía y peso disminuya 1. La energía y peso nunca puede ser un numero negativo. La máxima fuerza que puede adquirir es de 10 Newton. 
- Se considera feliz si su peso en menor a 75 y su fuerza mayor a 5.
- Siempre tiene baja energía.
- Hacer un metodo para comprar una fruta y que esta sea recordada. 
- Pepe siempre es deportista

**Nombres sugeridos de métodos:** (ver para que objetos aplica)
- `esAdulto()`
- `hacerDeporte(unDeporte)`
- `tieneBajaEnergia()`
- `estaFeliz()`
- `nuevoAnio()`
- `comprar(unaFruta)`
- `hacerMadurarALaFruta()`
- `comer()`
- `esDeportista()`

## Equipo
El equipo se encuentra conformado por 3 puestos, un delantero izquierdo, un delantero derecho y un defensor. 

- Asignar una persona a cada puesto del equipo. Recorda que el equipo está conformado por 3 puestos y anteriormente definimos a 3 personas. Otra cosa a tener en cuenta es que queremos recordar que puesto le asignamos a cada persona.

- Queremos saber si es un equipo de deportista. Es un equipo deportista cuando todos sus miembros son deportistas.

- Hacer un método para rotar posiciones, es decir:
    - El delantero izquierdo, pasa a ser el delantero derecho.
    - El delantero derecho, pasa a ser el defensor.
    - El delantero, pasa a ser el delantero izquierdo.

- Queremos saber cuál es el jugador con más energía dentro del equipo. Tener en cuenta que debe devolver un jugador y no su energía.

**Nombres sugeridos de métodos:**
- `asignarJugadores(delanteroIzquierdo,delanteroDerecho,defensor)`
- `esEquipoDeportista()`
- `rotarPosiciones()`
- `jugadorConMasEnergia()`

## Test
**Se deberá armar un archivo de test por cada archivo de objetos, donde se verifique el funcionamiento de todos los métodos.**
