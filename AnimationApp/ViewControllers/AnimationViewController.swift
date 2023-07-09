//
//  ViewController.swift
//  AnimationApp
//
//  Created by Shamkhan Mutuskhanov on 26.06.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    // MARK: - Private properties
    private var previousAnimation: Animation?
    private var currentAnimation: Animation?
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
    }
    
    // MARK: - IBActions
    @IBAction func runButtonAction(with sender: UIButton) {
        previousAnimation = currentAnimation
        
        getRandomAnimation()
        updateLabels()
        runCurrentAnimation()
    }
    
    // MARK: - Private methods
    private func getRandomAnimation() {
        currentAnimation = Animation.getRandomAnimation()
    }
    
    private func updateLabels() {
        guard let animation = previousAnimation else { return }
        
        presentLabel.text = "present: \(animation.animation)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = String(format: "force: %.2f", animation.force)
        durationLabel.text = String(format: "duration: %.2f", animation.duration)
        delayLabel.text = String(format: "delay: %.2f", animation.delay)
        
        if let currentAnimation = currentAnimation {
            runButton.setTitle("RUN \(currentAnimation.animation)", for: .normal)
        } else {
            runButton.setTitle("", for: .normal)
        }
    }
    
    private func runCurrentAnimation() {
        guard let animation = previousAnimation else { return }
        
        animationView.animation = animation.animation
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
    }
}
