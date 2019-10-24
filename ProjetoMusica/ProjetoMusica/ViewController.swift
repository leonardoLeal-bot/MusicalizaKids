//
//  ViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 09/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name = "Amigo"

    // variavieis utilizadas no segue
    @IBOutlet weak var receiveUserName: UILabel!
    
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
   
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        name = UserDefaults.standard.string(forKey: "UserName") ?? "Amigo"
        receiveUserName.text = name
//        self.navigationItem.leftBarButtonItem = nil
//        self.navigationController?.navigationBar.
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

