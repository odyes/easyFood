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
        return food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaFood") as? CeldaFoodController
        celda?.lblNombre.text = food[indexPath.row].nombre
        celda?.lblDescripcion.text = food[indexPath.row].descripcion
        
        celda?.imgFoto.image = UIImage(named: food[indexPath.row].foto)
        return celda!
    }
   
    
    
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        food.append(Food(nombre: "Enchiladas", descripcion: "Son un plato de la gastronomía de México y Centroamérica, en cada país la preparación e ingredientes son diferentes", foto: "enchiladas"))
        food.append(Food(nombre: "Boneless", descripcion: "Trocitos de pechuga de pollo, sin hueso, empanizados y bañados en una deliciosa salsa", foto: "boneless"))
        food.append(Food(nombre: "Chilaquiles", descripcion: "Plato típico mexicano elaborado a base de tortillas cortadas, fritas o tostadas, que se cocinan en una salsa picante que es roja o verde", foto: "chilaquiles"))
        food.append(Food(nombre: "Alitas", descripcion: "Las alitas de pollo son uno de los ingredientes más habituales en reuniones de amigos, aperitivos y picoteos", foto: "alitas"))
        food.append(Food(nombre: "Hamburguesa", descripcion: "Una hamburguesa es un sándwich hecho a base de carne molida o de origen vegetal, ​ aglutinada en forma de filete cocinado a la parrilla o a la plancha", foto: "burguer"))
        food.append(Food(nombre: "Calde de res", descripcion: "Puede ser tanto un caldo de verduras, como un caldo de carne o un caldo de ave", foto: "caldo"))
        food.append(Food(nombre: "Aroz de cebolla", descripcion: "Los aros de cebollas crujientes son una botana muy popular aquí en los Estados Unidos y básicamente lo puedes encontrar en cualquier restaurante de comida ràpida", foto: "cebolla"))
        food.append(Food(nombre: "Calzone", descripcion: "Elaborada de forma similar a la pizza pero completamente cerrada por una masa; puede estar relleno de queso, carne, vegetales u otros condimentos, y se cocina al horno.", foto: "calzone"))
        food.append(Food(nombre: "Ensalada de pollo", descripcion: "Es un plato que se prepara mezclando distintos alimentos, crudos o cocidos, principalmente hortalizas troceadas, y se sirve frío o tibio, y aliñado o aderezado con alguna salsa.", foto: "ensalada"))
        food.append(Food(nombre: "Fetuccini", descripcion: "Fettuccine es un tipo de pasta y una de sus características más importantes es que es un fideo plano elaborado con huevo, agua y harina.", foto: "fetuccini"))
        food.append(Food(nombre: "Lasaña", descripcion: "La lasaña es un tipo de pasta. Se suele servir en láminas superpuestas intercaladas con capas de ingredientes al gusto, más frecuentemente carne en salsa boloñesa y bechamel.", foto: "lasana"))
        food.append(Food(nombre: "Mole", descripcion: "Se refiere a varios tipos de salsas mexicanas muy condimentadas hechas principalmente a base de chiles y especias, y que son espesadas con masa de maíz, tortilla o pan", foto: "mole"))
        food.append(Food(nombre: "Pizza", descripcion: "Consiste en un pan plano, habitualmente de forma circular, elaborado con harina de trigo, levadura, agua y sal que tradicionalmente se cubre con salsa de tomate y mozzarella y se hornea a alta temperatura en un horno de leña.", foto: "pizza"))
        food.append(Food(nombre: "Puré de papa", descripcion: "Es un plato elaborado con papas cocidas y molidas, así como otros ingredientes.", foto: "purepapa"))
        food.append(Food(nombre: "Tamal", descripcion: "Preparado generalmente a base de masa de maíz o de arroz rellena de carnes, verduras y hortalizas, salsas y otros ingredientes.​​​", foto: "tamal"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

