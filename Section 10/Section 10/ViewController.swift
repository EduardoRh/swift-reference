//
//  ViewController.swift
//  Section 10
//
//  Created by Eduardo Rodríguez Hernández on 20/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    //Los outlets son el vinculo entre elementos visuales y la capa de datos, se usan para modificarse o reaccionar a acciones del usuario
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    // se crea arreglo de saludos
    let saludos = ["Hola", "Adiós", "Buenos días", "Buenas noches"]
    
    //MARK: Lifecycle
    //ciclo de vida del ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions setup
    // por medio de un Action se define la accion del usuario y se realiza una reaccion por parte de la interfaz
    @IBAction func onMainButtonClicked(_ sender: Any) {
        mainLabel.text = saludos.randomElement()
    }
    
}

