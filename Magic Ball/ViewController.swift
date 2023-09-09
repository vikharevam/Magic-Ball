//
//  ViewController.swift
//  Magic Ball
//
//  Created by Александр Вихарев on 30.03.2023.
//

import UIKit
//import AudioToolbox

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
    
    //    @IBAction func pressButton(_ sender: UIButton) {
    //
    //        viewAnsver.image = ballAnswerArray.randomElement()
    //
    //        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
    //    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        //        viewAnsver.image = UIImage(named: "Ball_Inactive")
        answerMode()
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        
    }
    
    func answerMode (){
        shakeImage()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            self.viewAnsver.image = self.ballAnswerArray.randomElement()
           
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4.0) {
            self.viewAnsver.image = UIImage(named: "Ball_Inactive")
        }
 
    }
    
    func shakeImage() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: viewAnsver.center.x - 10, y: viewAnsver.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: viewAnsver.center.x + 10, y: viewAnsver.center.y))
        viewAnsver.layer.add(animation, forKey: "position")
    }
    
}


