//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Michael Dunn on 2016-09-13.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        // Get the path of the audio file
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        }   catch let err as NSError {
            print(err.debugDescription)
        }
        
    }

    
    @IBAction func numberPressed(sender: UIButton){
            playSound()
    }
    
    func playSound(){
        if btnSound.isPlaying {
            btnSound.stop()
        }
        
        btnSound.play()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

