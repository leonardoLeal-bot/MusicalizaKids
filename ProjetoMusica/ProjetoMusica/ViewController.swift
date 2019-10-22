//
//  ViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 09/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // variavieis utilizadas no segue
    
    
    
    //Botao que seleciona a bateria
    @IBAction func bateria_selecionado(_ sender: Any) {
    }
    //    Botao que seleciona o violao
    @IBAction func violao_selecionado(_ sender: Any) {
    }
    //    Botao que seleciona o piano
    @IBAction func plano_selecionado(_ sender: Any) {
    }
    //    Botao que seleciona o trompete
    @IBAction func trompete_selecionado(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let instrumento_info = segue.destination as! Seleciona_nivel_ViewController
            if segue.identifier == "bateriaX"{
                instrumento_info.instrumento_selecionado = 1
            }
            if segue.identifier == "pianoX"{
                instrumento_info.instrumento_selecionado = 3
            }
            if segue.identifier == "violaoX"{
                instrumento_info.instrumento_selecionado = 2
            }
            if segue.identifier == "trompeteX"{
                instrumento_info.instrumento_selecionado = 4
            }
    }

}

