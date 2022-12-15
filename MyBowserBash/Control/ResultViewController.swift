//
//  ResultViewController.swift
//  MyBowserBash
//
//  Created by Philipp Edrich on 15.12.22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var restartButton: UIButton!
    
    var won = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if won {
            resultLabel.text = "Hooray! You won!"
            
            resultImage.image = UIImage(systemName: "heart.circle.fill")
            resultImage.tintColor = UIColor.systemGreen
            
            restartButton.setTitle("Attack another foe", for: .normal)
            restartButton.backgroundColor = UIColor.systemGreen
        }
        else
        {
            resultLabel.text = "Ouch! You lost!"
            
            resultImage.image = UIImage(systemName: "heart.slash.circle.fill")
            resultImage.tintColor = UIColor.systemRed
            
            restartButton.setTitle("REVENGE!", for: .normal)
            restartButton.backgroundColor = UIColor.systemOrange
        }
    }
    
    @IBAction func restartPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name.init("restartGame"), object: nil)
        self.dismiss(animated: true)
    }
}
