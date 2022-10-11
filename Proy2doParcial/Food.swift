//
//  Food.swift
//  Proy2doParcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

class Food {
    var nombre: String
    var descripcion: String
    var foto: String
    var receta : String
    var proteinas : String
    var carbo : String
    var sodio : String
    var colesterol : String
    var grasas : String
    var calorias : String
    var cantidad : String
    var ingredientes: [Ingrediente]
    
    init (nombre: String, descripcion: String, foto: String, receta: String, proteinas: String, carbo: String, sodio: String, colesterol: String, grasas: String, calorias: String, cantidad: String, ingredientes: [Ingrediente]){
        self.nombre = nombre
        self.descripcion = descripcion
        self.foto = foto
        self.receta = receta
        self.proteinas = proteinas
        self.carbo = carbo
        self.sodio = sodio
        self.colesterol = colesterol
        self.grasas = grasas
        self.calorias = calorias
        self.cantidad = cantidad
        self.ingredientes = ingredientes
    }
}
