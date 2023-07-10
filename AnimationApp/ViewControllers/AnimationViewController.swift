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
    @IBOutlet var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
    }
    
    // MARK: - IBActions
    @IBAction func runButtonAction(with sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("RUN \(animation.name)", for: .normal)
    }
}
