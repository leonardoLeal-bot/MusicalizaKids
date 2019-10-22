//
//  Questions.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 21/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import Foundation

class Question {
    var texto:String
    var opcao1:String
    var opcao2:String
    var opcao3:String
    var opcao4:String
    var resposta:Int
    init(texto:String,opcao1:String,opcao2:String,opcao3:String,opcao4:String,resposta:Int){
        self.texto = texto
        self.opcao1 = opcao1
        self.opcao2 = opcao2
        self.opcao3 = opcao3
        self.opcao4 = opcao4
        self.resposta = resposta
    }
}
