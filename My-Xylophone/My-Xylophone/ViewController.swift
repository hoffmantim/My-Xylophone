//
//  ViewController.swift
//  My-Xylophone
//
//  Created by Tim Hoffman on 5/2/18.
//  Copyright © 2018 Tim Hoffman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var player : AVAudioPlayer?
    
    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!

        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
        
    }

}

