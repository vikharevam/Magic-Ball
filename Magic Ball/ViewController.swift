//
//  ViewController.swift
//  Magic Ball
//
//  Created by Александр Вихарев on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewAnsver.image = UIImage(named: "Ball_Inactive")
    }
    
    @IBOutlet weak var viewAnsver: UIImageView!
    
    
    var ballAnswerArray = [
        UIImage(named: "ball_Ask_later")!,
        UIImage(named: "ball_Definitely_Yes")!,
        UIImage(named:"ball_No")!,
        UIImage(named:"ball_Yes")!,
        UIImage(named:"ball5")!]
    
    @IBAction func pressButton(_ sender: UIButton) {
        
        viewAnsver.image = ballAnswerArray.randomElement()
        
    }
      
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        viewAnsver.image = UIImage(named: "Ball_Inactive")
    }
    
}

