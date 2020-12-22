//
//  RemoveRefeicaoViewController.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/22/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class RemoveRefeicaoViewController{
    
    var controller = UIViewController()
    
    init(controller: UIViewController) {
        self.controller = controller
    }
 
    func exibe(_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void){
        
        let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)
        let botaoCancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        alerta.addAction(botaoCancelar)
        let botaoRemover = UIAlertAction(title: "remover", style: .destructive,
                                         handler: handler)
                                            
        alerta.addAction(botaoRemover)
        
        //present faz parte da classe UIViewController
        controller.present(alerta, animated: true, completion: nil)
    }
}
