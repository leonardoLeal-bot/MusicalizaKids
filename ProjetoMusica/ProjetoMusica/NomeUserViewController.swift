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
    //    @IBAction func textFieldDidChange(_ sender: UITextField) {
    //        guard let string = sender.text else { return }
    //
    //        if (string.isEmpty || string.characters.count >= 21) {
    //            errorLabel.text = "Name has to be a t least 1 character and not longer than 20"
    //        }
    //        else{
    //            errorLabel.text = ""
    //            Stitle.text = string
    //        }
    //    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        UserDefaults.standard.set(insertNameUser.text, forKey: "UserName")
    }
    
}
