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
        
        let present = DataStore.shared.animations.randomElement() ?? ""
        let curve = DataStore.shared.curves.randomElement() ?? ""
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
