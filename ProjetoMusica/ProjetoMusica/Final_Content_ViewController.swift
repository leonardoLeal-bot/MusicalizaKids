//
//  Final_Content_ViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 21/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class Final_Content_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //EMT
    @IBAction func link1(_ sender: Any) {
        
        let url = URL(string: "https://emt.com.br")
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    //Sonora Paulista
    @IBAction func link2(_ sender: Any) {
        let url = URL(string: "https://www.sonorapaulista.com.br")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
    }
    
    //Atelier de La Musique
    @IBAction func link3(_ sender: Any) {
        let url = URL(string: "https://atelierdelamusique.com.br")
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    //Cifra Club
    @IBAction func link4(_ sender: Any) {
        let url = URL(string: "https://www.cifraclub.com.br")
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    
    }
    
}
