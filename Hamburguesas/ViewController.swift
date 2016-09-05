//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Imac 1` on 9/5/16.
//  Copyright © 2016 Humbee Partners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Declarando variable de botón
    //@IBOutlet weak var boton: UIButton!
    // Declarando variable de label de país
    @IBOutlet weak var paisLabel: UILabel!
    // Declarando variable de label de hamburguesa
    @IBOutlet weak var hamburguesaLabel: UILabel!
    
    // Instanciando clases:
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func boton(sender: UIButton) {
        // Actualizando el texto en el label de país
        paisLabel.text = paises.obtenPais()
        // Actualizando el texto en el label de hamburguesa
        hamburguesaLabel.text = hamburguesas.obtenHamburguesa()
        // Obtener color aleatorio
        let colorAleatorio = colores.regresarColorAleatorio()
        // Asignar color a la vista
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }


}
