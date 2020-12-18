//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/18/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

class RefeicoesTableViewController: UITableViewController{
    
    let refeicoes = [
                     Refeicao(nome:"Macarrão", felicidade:4),
                     Refeicao(nome:"Pizza", felicidade:4),
                     Refeicao(nome:"Comida Japonesa", felicidade:5),
                     Refeicao(nome:"Kebab", felicidade:5)
                    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
}