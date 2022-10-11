//
//  DetallesFoodController.swift
//  Proy2doParcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class DetallesFoodController: UIViewController{
    
    @IBOutlet weak var lblReceta: UILabel!
    @IBOutlet weak var lblProteinas: UILabel!
    @IBOutlet weak var lblCarbo: UILabel!
    @IBOutlet weak var lblSodio: UILabel!
    @IBOutlet weak var lblColesterol: UILabel!
    @IBOutlet weak var lblGrasas: UILabel!
    @IBOutlet weak var lblCalorias: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    
    @IBOutlet weak var imgFoto: UIImageView!
    
    var foods : Food?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 172
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return detalles.count
   // }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if foods != nil {
            self.title = foods!.nombre
            lblReceta.text = foods!.receta
            lblProteinas.text = foods!.proteinas
            lblCarbo.text = foods!.carbo
            lblSodio.text = foods!.sodio
            lblColesterol.text = foods!.colesterol
            lblGrasas.text = foods!.grasas
            lblCalorias.text = foods!.calorias
            lblCantidad.text = foods!.cantidad
            
            imgFoto.image = UIImage(named: "\(foods!.foto)2")
        }else{
            self.title = "Detalles Food"
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 49
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods!.ingredientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaIngredientes") as? CeldaIngredientesController
        celda?.lblElemento.text = foods!.ingredientes[indexPath.row].elemento
        return celda!
    }
}
















