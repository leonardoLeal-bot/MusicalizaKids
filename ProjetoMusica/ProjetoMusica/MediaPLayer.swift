//
//  MidiaPLayer.swift
//  ProjetoMusica
//
//  Created by Aluno Mack on 24/10/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit
import AVFoundation

class MidiaPLayer: UIViewController {
    
    var audioViolao:AVAudioPlayer?
    var audioPiano:AVAudioPlayer?
    var audioTrompete:AVAudioPlayer?
    var audioBateria:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Violao", withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            audioViolao = try AVAudioPlayer(contentsOf: url!)
            audioViolao?.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Bateria", withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            audioBateria = try AVAudioPlayer(contentsOf: url!)
            audioBateria?.play()
        }
        catch {
            print("error")
        }
    }
   
    @IBAction func button3(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Trompete", withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            audioTrompete = try AVAudioPlayer(contentsOf: url!)
            audioTrompete?.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Piano", withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            audioPiano = try AVAudioPlayer(contentsOf: url!)
            audioPiano?.play()
        }
        catch {
            print("error")
        }
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
