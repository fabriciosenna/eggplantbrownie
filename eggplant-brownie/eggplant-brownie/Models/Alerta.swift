//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/21/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Alerta{
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Desculpe", mensagem: String){
        let alerta = UIAlertController(title: titulo, message:mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta,animated: true,completion: nil)
    }
}
