//
//  Datos.swift
//  Hamburguesas
//

/*
Crea una aplicación para iPhone que le muestre hamburguesas del mundo al usuario. Durante este reto revisarás los conceptos que hemos trabajado del desarrollo de aplicaciones para iPhone y las bases que revisamos de Swift versión 2.0.

Crea un proyecto nuevo en Xcode que se llame Hamburguesas y desarrolla lo siguiente:

1. Crea un archivo de Swift llamado: Datos.swift, dentro de él declara las siguientes clases:

a. class ColeccionDePaises

b. La clase tiene como atributos un arreglo de países de tipo [String], al menos debes contar con 20 países.

c. La clase define el método: func obtenPais( )->String, regresa de manera aleatoria un país del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo países.

2. Dentro del mismo archivo, Datos.swift, crea la clase:

a. class ColeccionDeHamburguesa

b. La clase tiene como atributos un arreglo de hamburguesas de tipo [String], al menos debes contar con 20 hamburguesas al igual que el número de países.

c. La clase define el método: func obtenHamburguesa( )->String, regresa de manera aleatoria una hamburquesa del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo de hamburguesas.

3. Dentro de tu interfaz gráfica debes contar con:

a. Una etiqueta para mostrar el nombre del país.

b. Otra etiqueta para mostrar el nombre de la hamburguesa.

c. Un botón, con la leyenda: “Quiero una hamburguesa!”

d. Debes de mostrar los elementos centrados en la interfaz gráfica

4. En la clase ViewController: desarrolla lo siguiente:

a. Una instancia de la clase ColeccionDePaises.

b. Una instancia de la clase ColeccionDeHamburguesas.

c. Un @IBoutlet para la etiqueta de país.

d. Un @IBoutlet para la etiqueta de hamburguesa

e. Un @IBAction para implementar cambiar de país y de hamburguesa.

5. Al presionar el botón debes cambiar el país y la hamburguesa que se despliegan en las etiquetas, de manera opcional cambia el color de fondo como se realizo en los videos del módulo 5.

*/

import Foundation

// Esta clase retorna uno de los 20 países contenidos
// en el arreglo 'paises', de forma aleatoria.
class ColeccionDePaises{
    // Lista de 20 países
    let paises: [String] = ["Venezuela", "Colombia",
    "Estados Unidos", "Chile", "Argentina", "México", "Ecuador", "Perú", "España", "Brasil", "Jamaica", "Costa Rica", "Panamá", "Canadá", "Bolivia", "República Dominicana", "Cuba", "Paraguay", "Guatemala", "Haití"]
    
    func obtenPais() -> String {
        let indice: Int
        indice = Int (arc4random() % 20)
        return paises[indice]
    }
}

// Esta clase retorna uno de las 20 hamburguesas contenidos en el arreglo 'hamburguesas', de forma aleatoria.
class ColeccionDeHamburguesas{
    // Lista de hamburguesas
    let hamburguesas: [String] = ["Clásica", "Whooper", "Big Mac", "Ranch", "Ávila Burger", "Burger Bar", "Bon Burger", "Er compinche Burger", "Burger Shack", "Deléitate Burger", "La Maracucha", "Hamburguesa paisa", "La costeñita", "Agüita e' sapo burger", "Granjera", "La gaseosa (con caraotas)", "Hot (picante)", "Guacamole Burger", "La bonna burger", "Vegetariana"]
    
    func obtenHamburguesa() -> String{
        let indice: Int
        indice = Int (arc4random() % 20)
        return hamburguesas[indice]
    }
}