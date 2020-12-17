//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/16/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //com ? deixa como opcional para que o compilador avise de possíveis crash
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?

    @IBAction func adicionar(_ sender: Any) {
        
       /*
        uma forma de solucionar
        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text{
            
            let nome = nomeDaRefeicao
            if let felicidade = Int(felicidadeDaRefeicao){
                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                
                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
            }else{
                print("Erro ao tentar criar a refeição")
            }
        }
        */
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else{
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
    
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
    }
    
}

