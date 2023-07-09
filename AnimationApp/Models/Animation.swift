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
        
        let animations = DataStore.shared.animations.randomElement()
        let curves = DataStore.shared.curves.randomElement()
        
        let present = animations
        let curve = curves
        
        var force: Double {
            Double.random(in: 0.5...2.0)
        }
        
        var duration: Double {
            Double.random(in: 0.3...1.0)
        }
        
        var delay: Double {
            Double.random(in: 0.3...1.0)
        }
        
        return Animation(
            animation: present?.rawValue ?? "",
            curve: curve?.rawValue ?? "",
            force: force,
            duration: duration,
            delay: delay
        )
    }
}
