//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 5/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let emojis = ["🥺": "sad", "🤩": "star"]
     let customMessages = ["sad":["try again"], "star": ["you're a star"]]
     @IBAction func showMessage(sender: UIButton) {
         let selectedEmotion = (sender.titleLabel?.text)!
         let alertController = UIAlertController(title: "Alert!", message: emojis[selectedEmotion], preferredStyle: UIAlertController.Style.alert)
         let options = customMessages[emojis[selectedEmotion]!]!
         let emojiMessage = options.randomElement()
        _ = UIAlertController(title: "Alert!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
         alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
         present(alertController, animated: true, completion: nil)
        
     }

}
