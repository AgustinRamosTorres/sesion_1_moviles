# sesion_1

A new Flutter project.

## Getting Started
Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
This project is a starting point for a

# Resumen Guión 1

## Esquema estructura aplicación
- MaterialApp (Clase App Es la más baja, la base de la aplicación)
  - ConversorPáginaPrincipal (La página principal de la aplicación)

## Buenas practicas para nombre de los archivos
EL criterio que dice google, es el nombre de la aplicación delante del nombre de las clases conversor_....dart

## Anotaciones
- Todo en la aplicación trabaja con widgets.
- En flutter toda la aplicación son vistas.
- Es importante porque se le pasa el CONTEXTO a los widgets, que es basicamente como se van a comunicar la aplicación.
- Cada vez que se refresque, se retuliza la misma instancia del arbol de vistas.
- IMPORTANTE: Todo lo que no cambie en la aplicación, se tiene que declarar como const.
- El método runApp ejecuta la aplicación. (Recibe como argumento a otros widgets y los transforma en otras vistas)
- En la clase que tengamos el materialApp, tenemos que poner el estilo general de la aplicación
- TryParse: Para intentar convertir lo que sea al objeto que quiera.
- 

### StateLessWidget
- Basicamente no tiene estados, es decir, que unicamente se llama una vez.
- Escriben el método build. (Recibe el contexto y devuelve un widget)

### StateFulWidget
- Basicamente tiene estados, y tiene una subclase asociada porque tiene estados mutables.
- Implementan el método createState, que devuelve la clase privada que tiene asociada, con el estado en el que se encuentre la pantalla.
- La clase privada es la que redefine el método build, es ques la que gestiona la vista. 
- El método build se llama cada vez que el estado mutable cámbia.
- Se pone const debido a lo que cambia es el estado, no la vista como tal
- Si queremos que algo se inicialice antes de que se renderice la aplicación, tenemos que redefinir el método initState. (Siempre hay que llamar al super para que no reviente)
- Cuando nosotros usamos un setState, lo que hacemos es decir que hemos cambiado y que se renderice la vista de nuevo.


## Widgets de interés
- PlaceHolder: Para cuando estamos en desarrollo todo gucci.
- MaterialApp: Es la base de la que pende toda la aplicación.
- Scaffold: Es el andamio donde se van a colocar todos los demás widgets.
- SafeArea: Sirve para que no se superpongan widgets
- Center: Es un widget posicional, que está centrado horizontalmente y verticalmente en la pantalla.
- Column: Es un widget que se coloca en vertical, y se le pueden pasar otros widgets como hijos. (Por defecto ocupa todo el espacio disponible, horizontalmente y verticalmente)

## Parámetros
- MaterialApp
  - title: Titulo de la aplicación
  - theme: Tema de la aplicación
  - home: Recibe la página principal de la aplicación

- Scaffold
  - appBar: Barra de arriba de la aplicación
    - title: Titulo de la barra (Si usas Text: solo puedes visualizar el texto, pero no puedes modificarlo)
    - backgroundColor: Color de la barra (Puedes sacarlos del contexto de la aplicación)
  - body: Cuerpo de la aplicación

- SafeArea: Para que no se pise una cosa a las demás.
  - child: Recibe IMPORTANTE: 1 widget, que va a estar dentro del safe area.

- Column:
  - mainAxisAlignment: Indicamos que los elementos estén alineados verticalmente.

- Text:
  - style: Permite personalizar la manéra en la que se muestra el texto en pantalla. (Basicamente lo que hace es poner la letra un poquito más gruesa)

- TextField: 
  - textAling: Para determinar la posición del texto dentro del textfield.
  - KeyboardType: Para indicar el teclado que se muestra en pantalla, en este caso (Ojo si se escoje otro tipo de teclado, no se podrian represnetar ciertos numeros)
    - decimal: Para que el teclado muestre los números decimales.
    - signed: Para que el teclado muestre los números negativos.
  - onChanged: cuando el usuario interactua con el campo de texto, este se llama a la función que recive como argumento el texto que se le ha introducido.

- DropdownButton:
  - value: Valor que se le asigna al dropdown.
  - items: Lista de elementos que se le pasan al dropdown cuando le pulsas. (Es importante pasarle una lista, para ello usamos el método toList)
    - Devuelve un objeto DropdownMenuItem, que es el que se va a mostrar en el dropdown y el child es lo que va a tener.
  - onChanged: Función que se llama cuando el usuario selecciona un elemento del dropdown. (El valor puede ser null, por ello hay que usar las exclamaciones)

- Padding: 
  - EdgeInsets.all(20): Añade un borde por los cuatro lados al hijo al que se le aplica.
  - child: el hijo al que se le aplica la cosa.

- ElevatedButton:
  - onPressed: Función que se llama cuando el usuario pulsa el botón.
  - child: Lo que pone en el boton.
  - onLongPress: Función que se llama cuando el usuario mantiene pulsado el botón.

- SingleChildScrollView:
  - child: Recibe un widget hijo, que es el que se va a desplazar.

## Patrones
- Barra de aplicación: Parte de arriba de la aplicación (Botones sin texto explicativo)
- 
- 

