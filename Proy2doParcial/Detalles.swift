//
//  Ingredientes.swift
//  Proy2doParcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

class Detalles{
    var nombre : String
    var receta : String
    var proteinas : String
    var carbo : String
    var sodio : String
    var colesterol : String
    var grasas : String
    var calorias : String
    var cantidad : String
    var foto : String
    var ingredientes: [Ingrediente]
    
    init(nombre: String, receta: String, proteinas: String, carbo: String, sodio: String, colesterol: String, grasas: String, calorias: String, cantidad: String, foto: String, ingredientes: [Ingrediente]){
        self.nombre = nombre
        self.receta = receta
        self.proteinas = proteinas
        self.carbo = carbo
        self.sodio = sodio
        self.colesterol = colesterol
        self.grasas = grasas
        self.calorias = calorias
        self.cantidad = cantidad
        self.foto = foto
        self.ingredientes = ingredientes
    }
    
}
