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
    
    var detalles : Detalles?
    
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
        
        if detalles != nil {
            self.title = detalles!.nombre
            lblReceta.text = detalles!.receta
            lblProteinas.text = detalles!.proteinas
            lblCarbo.text = detalles!.carbo
            lblSodio.text = detalles!.sodio
            lblColesterol.text = detalles!.colesterol
            lblGrasas.text = detalles!.grasas
            lblCalorias.text = detalles!.calorias
            lblCantidad.text = detalles!.cantidad
            
            imgFoto.image = UIImage(named: "\(detalles!.foto)2")
        }
    }
}
