//
//  MasaViewController.swift
//  Pizzas
//
//  Created by Nicolas Roman Toro on 3/30/16.
//  Copyright © 2016 Nicolas Roman Toro. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // declaración de array para Masas
    
    let tipoMasa = ["Delgada","Crujiente", "Gruesa"]
    
    // funciones Required de los protocolos UIPickerViewDataSource y UIPickerViewDelegate
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasa.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoMasa[row]
    }
    
    // creo variable para capturar la masa elegida
    
    var masaActual : String?
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masaActual = tipoMasa[row]
        print(masaActual!)
    }
    
    // paso valores elegidos a siguiente vista
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaQueso = segue.destinationViewController as! QuesoViewController
        vistaQueso.avanceMasa = masaActual!
        vistaQueso.avanceTamaño = avanceTamaño!
    }
    
    // conecto label para mostrar tamaño elegido en view controller anterior
    
    @IBOutlet weak var tamañoElegido: UILabel!
    
    // creo variable para almacenar tamaño elegido en vista anterior
    
    var avanceTamaño : String?
    
    // actualizo valores
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamañoElegido.text = "Tamaño: \(avanceTamaño!)"
        
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
