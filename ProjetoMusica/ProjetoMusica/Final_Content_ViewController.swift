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

    @IBOutlet weak var videoView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        videoView.allowsInlineMediaPlayback = true
        
        videoView.loadHTMLString("<iframe width=\"600\" height=\"450\" src=\"https://www.youtube.com/embed/KThAXtZkoRY\" frameborder=\"0\" allow=\",accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", baseURL: nil)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
