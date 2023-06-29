//
//  SpringAnimations.swift
//  AnimationApp
//
//  Created by Shamkhan Mutuskhanov on 27.06.2023.
//

struct Animation {
    var animation: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
}

extension Animation {
    
    static func getRandomAnimation() -> Animation {
        
        let animations = DataStore.shared.animations.shuffled()
        let curves = DataStore.shared.curves.shuffled()
        
        let present = animations[0]
        let curve = curves[0]
        let force = DataStore.shared.force
        let duration = DataStore.shared.duration
        let delay = DataStore.shared.delay
        
        return Animation(
            animation: present,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
    }
}
