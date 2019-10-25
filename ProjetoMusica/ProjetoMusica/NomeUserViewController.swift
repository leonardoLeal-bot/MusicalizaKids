//
//  NomeUserViewController.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 23/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class NomeUserViewController: UIViewController {
    
    @IBOutlet weak var insertNameUser: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        UserDefaults.standard.set(insertNameUser.text, forKey: "UserName")
    }
    
    func textFieldShoudlReturn(_ insertNameUser: UITextField) -> Bool {
        
        insertNameUser.resignFirstResponder()
        
        return true
    }
    
}
