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
    var ingredientesEn : [Ingrediente] = []
    var ingredientesBon : [Ingrediente] = []
    var ingredientesChi : [Ingrediente] = []
    var ingredientesAli : [Ingrediente] = []
    var ingredientesHam : [Ingrediente] = []
    var ingredientesCal : [Ingrediente] = []
    var ingredientesAro : [Ingrediente] = []
    var ingredientesCalz : [Ingrediente] = []
    var ingredientesEns : [Ingrediente] = []
    var ingredientesFet : [Ingrediente] = []
    var ingredientesLas : [Ingrediente] = []
    var ingredientesMole : [Ingrediente] = []
    var ingredientesPizza : [Ingrediente] = []
    var ingredientesPure : [Ingrediente] = []
    var ingredientesTamal : [Ingrediente] = []
    
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
        celda?.imgFoto.layer.cornerRadius = 10
        celda?.imgFoto.clipsToBounds = true
        celda?.imgFoto.image = UIImage(named: food[indexPath.row].foto)
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesFoodController
        destino.foods = food[tvFood.indexPathForSelectedRow!.row]
    }
    
    
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tvFood.separatorColor = UIColor.clear
        
        ingredientesEn.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEn.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEn.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEn.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEn.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesBon.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesBon.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesBon.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesChi.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesChi.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesChi.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesAli.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesAli.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesAli.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesHam.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesHam.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesHam.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesHam.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesCal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCal.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesAro.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesAro.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesAro.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesCalz.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCalz.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCalz.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesCalz.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesEns.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEns.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEns.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesEns.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesFet.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesFet.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesFet.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesFet.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesLas.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesLas.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesLas.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesLas.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesMole.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesMole.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesMole.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesPizza.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesPizza.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesPizza.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesPizza.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesPure.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesPure.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesPure.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        ingredientesTamal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesTamal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesTamal.append(Ingrediente(elemento: "150 gr queso añejo"))
        ingredientesTamal.append(Ingrediente(elemento: "150 gr queso añejo"))
        
        food.append(Food(nombre: "Enchiladas", descripcion: "Son un plato de la gastronomía de México y Centroamérica, en cada país la preparación e ingredientes son diferentes", foto: "enchiladas", receta: "1.- Freír la salsa resultante en tres cucharadas de manteca caliente y condimentarla con sal al gusto. 2.- Añadir el caldo y continuar el cocimiento hasta que tome consistencia. 3.- Humedecer las tortillas en el chile y freirías en bastante manteca caliente. 4.- Rellenarlas con queso, pechuga, papas, zanahorias y cebolla picada. 5.- Doblar las tortillas a la mitad y cubrirlas con más salsa; adornar con rebanadas de cebolla y queso", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesEn))
        food.append(Food(nombre: "Boneless", descripcion: "Trocitos de pechuga de pollo, sin hueso, empanizados y bañados en una deliciosa salsa", foto: "boneless", receta: "1.- SALPIMIENTA los cubos de pollo. 2.- PASA por harina y huevo batido. Espolvorea y repite el procedimiento. 3.- CALIENTA el aceite y fríe en aceite a fuego medio por 4 minutos.4.- FRÍE en aceite caliente hasta que se doren. Escurre sobre papel absorbente. 5.- Baña en salsa de tu preferencia", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesBon))
        food.append(Food(nombre: "Chilaquiles", descripcion: "Plato típico mexicano elaborado a base de tortillas cortadas, fritas o tostadas, que se cocinan en una salsa picante que es roja o verde", foto: "chilaquiles", receta: "1.- Coloca sobre el fuego una sartén con aceite. 2.- Distribuye en platos los totopos y báñalos con la salsa caliente. 3.- Agrégales crema, queso y cebolla. 4.- Pon en cada plato un huevo frito, sobre los chilaquiles y si lo deseas acompáñalos con frijoles", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesChi))
        food.append(Food(nombre: "Alitas", descripcion: "Las alitas de pollo son uno de los ingredientes más habituales en reuniones de amigos, aperitivos y picoteos", foto: "alitas", receta: "1.-  En una sartén, sofríe las alitas en la mantequilla caliente por 15 minutos. 2.- Licua para la salsa el vinagre, el Concentrado de Tomate con Pollo CONSOMATE®, los chiles y la sal con ajo en polvo. pon las alitas en la mezcla y calienta por 2 minutos. 3.- Ofrece caliente, puedes acompañarlas de la misma salsa picante.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesAli))
        food.append(Food(nombre: "Hamburguesa", descripcion: "Una hamburguesa es un sándwich hecho a base de carne molida o de origen vegetal, ​ aglutinada en forma de filete cocinado a la parrilla o a la plancha", foto: "burguer", receta: "1.-  Coloca la carne molida en un recipiente amplio, añade ajo, cebolla y paprika, coloca la mitad de la salsa BBQ ahumada MAGGI® rectifica con sal pimienta y mezcla bien. 2.- Arma las hamburguesas colocando tus salsas favoritas sobre el pan, luego la carne, cúbrela con el queso y los vegetales. Cubre el pan y disfruta.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesHam))
        food.append(Food(nombre: "Calde de res", descripcion: "Puede ser tanto un caldo de verduras, como un caldo de carne o un caldo de ave", foto: "caldo", receta: "1.- En una olla vierte las 10 tazas de agua, la carne de res, el ajo, las hojas de laurel y 1 1/2 cucharada de sal. Cocina hasta hervir. 2.- Agrega el repollo (green cabagge) y 1/4 taza de cilantro a la sopa. Cocina durante otros 15 a 20 minutos, hasta que el repollo (col verde) esté tierno pero al dente. Retira la sopa del fuego y déjala reposar durante 15 minutos.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesCal))
        food.append(Food(nombre: "Aroz de cebolla", descripcion: "Los aros de cebollas crujientes son una botana muy popular aquí en los Estados Unidos y básicamente lo puedes encontrar en cualquier restaurante de comida ràpida", foto: "cebolla", receta: "1.- Corta cebolla en aroz. 2.- vierte en masa para freir. 3.- Frie en aceite y listo.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesAro))
        food.append(Food(nombre: "Calzone", descripcion: "Elaborada de forma similar a la pizza pero completamente cerrada por una masa; puede estar relleno de queso, carne, vegetales u otros condimentos, y se cocina al horno.", foto: "calzone", receta: "1.- Dividimos la masa en dos y estiramos formando un círculo. Mejor si trabajamos sobre papel vegetal porque así será más cómodo transferir a la bandeja del horno. 2.- Extendemos el relleno en una mitad. Espolvoreamos con el queso parmesano rallado por encima", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesCalz))
        food.append(Food(nombre: "Ensalada de pollo", descripcion: "Es un plato que se prepara mezclando distintos alimentos, crudos o cocidos, principalmente hortalizas troceadas, y se sirve frío o tibio, y aliñado o aderezado con alguna salsa.", foto: "ensalada", receta: "1.- Mezcle pollo con verduras", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesEns))
        food.append(Food(nombre: "Fetuccini", descripcion: "Fettuccine es un tipo de pasta y una de sus características más importantes es que es un fideo plano elaborado con huevo, agua y harina.", foto: "fetuccini", receta: "1.- Calienta el aceite en una sartén mediana a fuego medio-bajo. Agrega el ajo y cocínalo mezclando frecuentemente durante 1 minuto. Reduce el fuego a bajo y agrega la media crema y el caldo. Deja que hierva ligeramente. Agrega el queso. Cocínalo durante 2 minutos o hasta que la salsa esté espesa. Sírvela sobre la pasta y espolvoreada con perejil.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesFet))
        food.append(Food(nombre: "Lasaña", descripcion: "La lasaña es un tipo de pasta. Se suele servir en láminas superpuestas intercaladas con capas de ingredientes al gusto, más frecuentemente carne en salsa boloñesa y bechamel.", foto: "lasana", receta: "1.- Ponga a calentar la pasta hastq eu quede cocida. 2.- En medio de cada capa de pasta agregue salsa o lo que quiera y arriba queso. 3.- Meter al horno.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesLas))
        food.append(Food(nombre: "Mole", descripcion: "Se refiere a varios tipos de salsas mexicanas muy condimentadas hechas principalmente a base de chiles y especias, y que son espesadas con masa de maíz, tortilla o pan", foto: "mole", receta: "1.- Ponga el pollo en agua hirviendo hastq eu este coccido. 2.- Bañe en salsa de mole.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesMole))
        food.append(Food(nombre: "Pizza", descripcion: "Consiste en un pan plano, habitualmente de forma circular, elaborado con harina de trigo, levadura, agua y sal que tradicionalmente se cubre con salsa de tomate y mozzarella y se hornea a alta temperatura en un horno de leña.", foto: "pizza", receta: "1.- Masajee la masa hasta que la forma sea la deseada. 2.- Agreguele salsa y lo que guste. 3.- Meta al horno.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesPure))
        food.append(Food(nombre: "Puré de papa", descripcion: "Es un plato elaborado con papas cocidas y molidas, así como otros ingredientes.", foto: "purepapa", receta: "1.- Coloqe las papas en agua hirviendo hasta que estén cocidas. 2.- Aplaste las papas y agreguele sal, pimiento y queso.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesPure))
        food.append(Food(nombre: "Tamal", descripcion: "Preparado generalmente a base de masa de maíz o de arroz rellena de carnes, verduras y hortalizas, salsas y otros ingredientes.​​​", foto: "tamal", receta: "1.- Bate harina con manteca, agua, polvo para hornear y sal, hasta tener una mezcla uniforme. 2.-Cuece la pechuga en agua y desmenuza. 3.- Licua el tomate con una taza de caldo de pollo, chile verde, ajo y cebolla; salpimienta. 4.- Hierve durante 5 minutos o hasta que reduzca un poco. 5.- Hidrata las hojas en agua, baña el pollo con la salsa verde y colócalo sobre la masa; cierra las hojas y cuece a baño María hasta que estén cocidos.", proteinas: "6g", carbo: "16g", sodio: "687mg", colesterol: "21mg", grasas: "9g", calorias: "168", cantidad: "100 gramos", ingredientes: ingredientesTamal))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        ///////////////////
    }


}

