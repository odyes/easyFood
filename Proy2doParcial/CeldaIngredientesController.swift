//
//  CeldaIngredientesController.swift
//  Proy2doParcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class CeldaIngredientesController: UITableViewCell{
    
    @IBOutlet weak var lblElemento: UILabel!
}



/*class CeldaIngredientesController: UITableViewCell{
    var ingredientes : [Ingrediente] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 49
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaIngredientes") as? CeldaIngredientesController
        celda?.lblElemento.text = ingredientes[indexPath.row].elemento

        return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        ingredientes.append(Ingrediente(elemento: "Enchiladas"))
        
        
    }

}*/
