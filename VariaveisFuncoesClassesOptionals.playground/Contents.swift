import UIKit

let caloria1 = 50.5
let caloria2 = 50.5
let caloria3 = 50.5
let caloria4 = 50.5
let calorias = [50.5,50.5,50.5,50.5,800]

print(calorias)

for i in 0...3{
    print(i)
    print(calorias[i])
}

//for in
for caloria in calorias{
    print(caloria)
}


func todasCalorias(totalDeCalorias: [Double]) -> Double{
    var total: Double = 0
    
    for caloria in totalDeCalorias{
        total+=caloria
    }
    
    return total
}

let total = todasCalorias(totalDeCalorias: calorias)

print(total)


//Criar uma classe que agrupe essas caracteristicas

class Refeicao{
    let nome: String = "Macarrão"
    let felicidade: String = "5"
}

// Instanciando uma classe
//forma explicita
//let refeicao: Refeicao = Refeicao()

//forma implicita
let refeicao = Refeicao()

print(refeicao.nome)


//Optionals

//O pior caso de todos que nunca se deve usar
class RefeicaoNunca{
    var nome: String!
    var felicidade: String!
}


class Refeicao2{
    var nome: String?
    var felicidade: String?
}

//forma implicita
let refeicao2 = Refeicao2()
refeicao2.nome = "Feijão"

//Cuidado(não usar) => forced unwrap
//print(refeicao2.nome!)

//não aconselhado usar também, pouco usado por programadores IOS
if refeicao2.nome != nil{
    print(refeicao2.nome!)
}

// Boas práticas para extrair valores opcionais:

if let nome = refeicao2.nome{
    print(nome)
}

// guard let

func exibeNomeDaRefeicao(){
    //Aqui a variavel opcional existe só dentro do escopo
    if let nome = refeicao2.nome{
        print(nome)
    }
    
    //tenta verificar se o valor é opcional ou não , se for nil ele cai no else
    //aqui a variável opcional existe fora do escopo, usado para quando tem varios
    guard let nome = refeicao2.nome else {
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()

//Exemplo de função que parece não retornar um opcional porém é um opcional e não uma declaração específica de tipo
//O método Int() retorna um Int opcional quando o valor passado como parâmetro for inválido para conversão,
//sendo necessário que a variável que receberá o retorno desse método seja declarada implicitamente ou como opcional.
let numero = Int("5fdsfsdfs")

if let n = numero {
    print(n)
}else{
    print("erro ao converter string para int")
}


