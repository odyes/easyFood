//
//  ViewController.swift
//  Proy2doParcial
//
//  Created by Alumno on 9/29/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class FoodController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tvFood: UITableView!
    var food : [Food] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 172
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaFood") as? CeldaFoodController
        celda?.lblNombre.text = food[indexPath.row].nombre
        celda?.lblDescripcion.text = food[indexPath.row].descripcion
        
        //celda?.imgEscena.image = 
        return celda!
    }
   
    
    
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

