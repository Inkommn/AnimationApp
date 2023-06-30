//
//  ViewController.swift
//  AnimationApp
//
//  Created by Shamkhan Mutuskhanov on 26.06.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: SpringButton!
    
    private var currentAnimation: Animation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springView.layer.cornerRadius = 10
    }
    
    @IBAction func runButtonAction(with sender: SpringButton) {
        let randomAnimation = Animation.getRandomAnimation()
        updateLabels(with: randomAnimation)
        getRandomAnimation(with: randomAnimation)
        sender.animate()
        
        
    }
    
    private func updateLabels(with animation: Animation) {
        presentLabel.text = "present: \(animation.animation)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = String(format: "force: %.2f", animation.force)
        durationLabel.text = String(format: "duration: %.2f", animation.duration)
        delayLabel.text = String(format: "delay: %.2f", animation.delay)
    }
    
    private func getRandomAnimation(with animation: Animation) {
        springView.animation = animation.animation
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.delay)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
    }
    
    
}
    
            

            
            

