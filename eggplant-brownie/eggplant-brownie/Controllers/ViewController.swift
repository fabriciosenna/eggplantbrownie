//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Fabricio Rodrigo Baixo on 12/16/20.
//  Copyright © 2020 Fabricio Rodrigo Baixo. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    // MARK: Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    var itens: [Item] = [Item(nome:"Molho de Tomate", calorias: 40.0),
                         Item(nome:"Queijo", calorias: 40.0),
                         Item(nome:"Molho Apimentado", calorias: 40.0),
                         Item(nome:"Manjericão", calorias: 40.0),
                         ]
    var itensSelecionados: [Item] = []
    
    // MARK: IBOutlets
    //com ? deixa como opcional para que o compilador avise de possíveis crash
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        let botaoAdicionaItem = UIBarButtonItem(title: "adicionar", style: .plain, target: self, action: #selector(adicionarItens))
        navigationItem.rightBarButtonItem = botaoAdicionaItem
    }
    
    @objc func adicionarItens(){
        print("adicionar novo item na lista")
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style:  .default, reuseIdentifier: nil)
       
        let linhaDaTabela = indexPath.row
        let item = itens[linhaDaTabela]
        
        celula.textLabel?.text = item.nome
        
        return celula
    }
   
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let celula = tableView.cellForRow(at: indexPath) else {return}
        
        let linhaDaTabela = indexPath.row
        itensSelecionados.append(itens[linhaDaTabela])
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
        }else{
            celula.accessoryType = . none
            
            let item = itens[indexPath.row]
            
            if let position = itensSelecionados.index(of: item){
                itensSelecionados.remove(at: position)
            }
        }
    }
    
    // MARK: IBActions

    @IBAction func adicionar(_ sender: Any) {
        
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else{
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        refeicao.itens = itensSelecionados
        
        delegate?.add(refeicao)
        
        //faz com que retorne para a tela anterior ao clicar em adicionar
        navigationController?.popViewController(animated: true)
    }
}

