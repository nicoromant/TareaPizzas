//
//  ConfirmaPizzaViewController.swift
//  Pizzas
//
//  Created by Nicolas Roman Toro on 4/2/16.
//  Copyright © 2016 Nicolas Roman Toro. All rights reserved.
//

import UIKit

class ConfirmaPizzaViewController: UIViewController {
    
    // conecto labels
    
    @IBOutlet weak var tamañoFinal: UILabel!
    @IBOutlet weak var masaFinal: UILabel!
    @IBOutlet weak var quesoFinal: UILabel!
    @IBOutlet weak var ingredientesFinal: UILabel!
    
    // creo variables para almacenar elecciones anteriores
    
    var tamañoElegido : String?
    var masaElegida: String?
    var quesoElegido: String?
    var ingredElegidos : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // actualizo valores de labels
        
        tamañoFinal.text = "Tamaño: \(tamañoElegido!)"
        masaFinal.text = "Masa: \(masaElegida!)"
        quesoFinal.text = "Queso: \(quesoElegido!)"
        ingredientesFinal.text = ingredElegidos
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
