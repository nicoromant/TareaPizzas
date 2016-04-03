//
//  ViewController.swift
//  Pizzas
//
//  Created by Nicolas Roman Toro on 3/29/16.
//  Copyright © 2016 Nicolas Roman Toro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // declaración de array para Tamaños
    
    let tamañoPizza = ["Chica", "Mediana", "Grande"]
    
    // funciones required de los protocolos agregados
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamañoPizza.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamañoPizza[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // creo variable para capturar el tamaño elegido
    
    var tamañoActual : String?
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamañoActual = tamañoPizza[row]
        print(tamañoActual!)
    }
    
    // paso el tamaño elegido a la variable declarada en la siguiente vista
    // ver part 7, Step 5, 1:20
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaMasa = segue.destinationViewController as! MasaViewController
        vistaMasa.avanceTamaño = tamañoActual!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

