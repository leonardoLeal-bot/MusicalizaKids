//
//  Tela_Pergunta_ViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 21/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class Tela_Pergunta_ViewController: UIViewController {

    
    @IBOutlet weak var Pergunta_tela_pergunta: UILabel!
    @IBOutlet weak var opcao_resposta_1: UIImageView!
    @IBOutlet weak var opcao_resposta_2: UIImageView!
    @IBOutlet weak var opcao_resposta_3: UIImageView!
    @IBOutlet weak var opcao_resposta_4: UIImageView!
    
    
    var obj:Question?
    
    
    var nivel_selecionado:Int?
    var instrumento_selecionado:Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //BATERIA
        if nivel_selecionado == 1 && instrumento_selecionado == 1{
            obj = Question(texto: "O que não faz parte da uma bateria?", opcao1: "baqueta", opcao2: "chimbal", opcao3: "caixa_icon", opcao4: "trompete_icon", resposta: 4)
        }
        
        if nivel_selecionado == 2 && instrumento_selecionado == 1{
            obj = Question(texto: "Qual dos seguintes é o baterista?", opcao1: "pianista", opcao2: "baterista", opcao3: "trompetista", opcao4: "trombone_player", resposta: 2)
        }
        if nivel_selecionado == 3 && instrumento_selecionado == 1{
            obj = Question(texto: "Qual destes é um chimbal?", opcao1: "paleta", opcao2: "baqueta", opcao3: "chimbal", opcao4: "mike", resposta: 3)
        }
            
        //VIOLAO
        if nivel_selecionado == 1 && instrumento_selecionado == 3{
            obj = Question(texto: "Qual destes é o violão?", opcao1: "guitarra", opcao2: "chocalho", opcao3: "terraxas", opcao4: "violao", resposta: 4)
        }
        if nivel_selecionado == 2 && instrumento_selecionado == 3{
            obj = Question(texto: "Qual dos seguintes é a palheta?", opcao1: "piano_icon", opcao2: "paleta", opcao3: "mike", opcao4: "baqueta", resposta: 2)
        }
        if nivel_selecionado == 3 && instrumento_selecionado == 3{
            obj = Question(texto: "Onde ficam as terraxas?", opcao1: "guitarra", opcao2: "violao", opcao3: "violino", opcao4: "terraxas", resposta: 4)
        }
        
        //PIANO
        if nivel_selecionado == 1 && instrumento_selecionado == 2{
            obj = Question(texto: "Quem esta tocando o Piano?", opcao1: "pianista", opcao2: "baterista", opcao3: "trompetista", opcao4: "saxofonista1", resposta: 1)
        }
        if nivel_selecionado == 3 && instrumento_selecionado == 2{
            obj = Question(texto: "Qual destes é o GrandPiano?", opcao1: "keyb", opcao2: "pianoEletronico", opcao3: "GrandPiano", opcao4: "piano_icon", resposta: 3)
        }
        if nivel_selecionado == 2 && instrumento_selecionado == 2{
            obj = Question(texto: "Qual deste é um Piano Eletrônico??", opcao1: "violino", opcao2: "pianoEletronico", opcao3: "trompete_icon", opcao4: "guitarra", resposta: 2)
        }

            
        //TROMPETE
        if nivel_selecionado == 1 && instrumento_selecionado == 4{
            obj = Question(texto: "Qual destes é um Trompete?", opcao1: "flauta", opcao2: "trombone", opcao3: "saxophone", opcao4: "trompete_icon", resposta: 4)
        }
        if nivel_selecionado == 2 && instrumento_selecionado == 4{
            obj = Question(texto: "Quem é o trompetista?", opcao1: "pianista", opcao2: "trombone_player", opcao3: "saxofonista1", opcao4: "trompetista", resposta: 4)
        }
        if nivel_selecionado == 3 && instrumento_selecionado == 4{
            obj = Question(texto: "Com o que tocamos o trompete?", opcao1: "paleta", opcao2: "boca", opcao3: "baqueta", opcao4: "pezinho", resposta: 2)
        }
        
        if let objNaoOp = obj{
            
            Pergunta_tela_pergunta.text = objNaoOp.texto
            opcao_resposta_1.image = UIImage (named: (objNaoOp.opcao1))
            opcao_resposta_2.image = UIImage (named: (objNaoOp.opcao2))
            opcao_resposta_3.image = UIImage (named: (objNaoOp.opcao3))
            opcao_resposta_4.image = UIImage (named: (objNaoOp.opcao4))
            
        }

    }
    
    
    @IBAction func show_detail(_ sender: Any) {
        
        if let verificador = sender as? UIView, let objNaoOp = obj {
            if verificador.tag == objNaoOp.resposta {
                performSegue(withIdentifier: "tela_detalhes", sender: nil)
            }
        }
    }
    
}
