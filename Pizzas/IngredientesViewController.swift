//
//  IngredientesViewController.swift
//  Pizzas
//
//  Created by Nicolas Roman Toro on 3/30/16.
//  Copyright © 2016 Nicolas Roman Toro. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController, UITableViewDataSource {
    
    // declaración de array para Ingredientes
    
    let ingredientes = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoas"]
    
    // métodos requeridos en protocolo UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientes.count
    }
    
    // definiendo los contenidos de la tabla
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        // línea anterior crea instancia de celda reusable y hay que agergar as UITableViewCell para que retorne ese tipo
        // luego hay que crear una prototype cell en el storyboard, pues hay que tener una instancia inicial de "cell"
        
        let ingredienteListado = ingredientes[indexPath.row] // tomando contenidos del array usando parámetro indexPath
        
        cell.textLabel?.text = ingredienteListado // usando esos contenidos del array para setear valor de la celda
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Selecciona de 1 a 5 ingredientes"
    }
    
    // conecto la tabla
    
    @IBOutlet weak var tablaIngredientes: UITableView!
        
    // conecto labels para mostrar elecciones anteriores
    
    @IBOutlet weak var tamañoElegido: UILabel!
    @IBOutlet weak var masaElegida: UILabel!
    @IBOutlet weak var quesoElegido: UILabel!
    
    // creo variables para almacenar elecciones anteriores
    
    var avanceTamaño : String?
    var avanceMasa: String?
    var avanceQueso: String?
    
    // actualizo valores

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tamañoElegido.text = "Tamaño: \(avanceTamaño!)"
        masaElegida.text = "Masa: \(avanceMasa!)"
        quesoElegido.text = "Queso: \(avanceQueso!)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let vistaConfirmacion = segue.destinationViewController as! ConfirmaPizzaViewController
        
        // Pass the selected object to the new view controller.
        vistaConfirmacion.tamañoElegido = avanceTamaño
        vistaConfirmacion.masaElegida = avanceMasa
        vistaConfirmacion.quesoElegido = avanceQueso
        vistaConfirmacion.ingredElegidos = "Listado de Ingredientes"
    }


}
