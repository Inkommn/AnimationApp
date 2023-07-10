//
//  SpringAnimations.swift
//  AnimationApp
//
//  Created by Shamkhan Mutuskhanov on 27.06.2023.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        present: \(name),
        curve: \(curve),
        force: \(String(format: "%.02f", force)),
        duration: \(String(format: "%.02f", duration)),
        delay: \(String(format: "%.02f", delay)),
        """
    }
}

extension Animation {
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
