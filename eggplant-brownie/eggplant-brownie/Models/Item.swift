//
//  Item.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/16/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    // MARK: - Atributos
    
    var nome: String
    var calorias: Double
    
    // MARK - Método Init (Construtor)
    
    init(nome:String,calorias:Double) {
        self.nome = nome
        self.calorias = calorias
    }

}
