//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/16/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableViewController: RefeicoesTableViewController?


    //com ? deixa como opcional para que o compilador avise de possíveis crash
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?

    @IBAction func adicionar(_ sender: Any) {
        
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else{
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
    
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        tableViewController?.add(refeicao)
        
        //faz com que retorne para a tela anterior ao clicar em adicionar
        navigationController?.popViewController(animated: true)
    }
    
}

