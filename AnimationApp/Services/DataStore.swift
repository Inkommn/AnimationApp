//
//  DataStore.swift
//  AnimationApp
//
//  Created by Shamkhan Mutuskhanov on 27.06.2023.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations: [AnimationPreset] = AnimationPreset.allCases
    let curves: [AnimationCurve] = AnimationCurve.allCases

    private init() {}
}
