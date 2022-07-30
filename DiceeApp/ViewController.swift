//
//  ViewController.swift
//  DiceeApp
//
//  Created by Waliok on 28/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewDice1: UIImageView!
    
    @IBOutlet weak var ImageViewDice2: UIImageView!
    
    let array = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                rollButtonPressed(self)
            }
    }
    @IBAction func rollButtonPressed(_ sender: Any) {
        animate(image: ImageViewDice1)
        animate(image: ImageViewDice2)
        ImageViewDice1.image = array.randomElement()
        ImageViewDice2.image = array.randomElement()
    }
    func animate (image: UIImageView) {
        image.animationImages = array
        image.animationDuration = 1
        image.animationRepeatCount = 1
        image.startAnimating()
        
    }
    
}

