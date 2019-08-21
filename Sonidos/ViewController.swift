//
//  ViewController.swift
//  Sonidos
//
//  Created by Alumno on 21/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?
    var player2 : AVAudioPlayer?
    
    @IBAction func doTapReproducir(_ sender: Any) {
        if player != nil {
            player?.play()
        }
    }
    
    @IBAction func doTapReproducir2(_ sender: Any) {
        if player2 != nil {
            player2?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "AUDIO 29.wav", ofType: nil)
        let url = URL(fileURLWithPath : path!)

        // Try catch example (used as a do->try & catch in Swift)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player2 = try AVAudioPlayer(contentsOf: url)
        }
        catch{
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

