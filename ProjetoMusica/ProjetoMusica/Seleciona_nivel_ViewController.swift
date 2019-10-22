//
//  Seleciona_nivel_ViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 21/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class Seleciona_nivel_ViewController: UIViewController {

    var instrumento_selecionado:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Pergunta_user: UILabel!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passa_info = segue.destination as! Tela_Pergunta_ViewController
            if segue.identifier == "nivel1"{
                passa_info.nivel_selecionado = 1
            }
            if segue.identifier == "nivel2"{
                passa_info.nivel_selecionado = 2
            }
            if segue.identifier == "nivel3"{
                passa_info.nivel_selecionado = 3
            }
            passa_info.instrumento_selecionado = instrumento_selecionado
    }

}
