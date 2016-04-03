//
//  QuesoViewController.swift
//  Pizzas
//
//  Created by Nicolas Roman Toro on 3/30/16.
//  Copyright © 2016 Nicolas Roman Toro. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // declaración de array para Quesos
    
    let tipoQueso = ["Cheddar", "Mozzarella", "Parmesano", "Sin Queso"]
    
    // funciones requeridas de los protocolos
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoQueso[row]
    }
    
    // creo variable para almacenar queso elegido
    
    var quesoActual : String?
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoActual = tipoQueso[row]
        print(quesoActual!)
    }
    
    // paso valores elegidos a siguiente vista
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaIngredientes = segue.destinationViewController as! IngredientesViewController
        vistaIngredientes.avanceTamaño = avanceTamaño!
        vistaIngredientes.avanceMasa = avanceMasa!
        vistaIngredientes.avanceQueso = quesoActual!
    }
    
    // conecto label para mostrar elecciones en view controllers anteriores
    
    @IBOutlet weak var tamañoElegido: UILabel!
    @IBOutlet weak var masaElegida: UILabel!
    
    // creo variables para almacenar elecciones anteriores
    
    var avanceTamaño : String?
    var avanceMasa: String?
    
    // actualizo valores

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamañoElegido.text = "Tamaño: \(avanceTamaño!)"
        masaElegida.text = "Masa: \(avanceMasa!)"

        // Do any additional setup after loading the view.
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
