//
//  AnimationsModel.swift
//  SpringAnination
//
//  Created by u on 07.04.2022.
//

import Foundation

struct Animations {
    
    var animationDescription = "wobble"
    
    var animation = "wobble"
    var curve = "easeIn"
    var animationDuration: Double = 0.1
    var animationDelay: Double = 0.1
    var animationDamping: Double = 0.1
    
}

//MARK: Public changing funcs
extension Animations {
    
    public mutating func setValues(forAnimation animation: String, curve: String, animationDuration: Double, animationDelay: Double, andDumping animationDamping: Double ) {
        
        self.animation = animation
        self.curve = curve
        self.animationDuration = animationDuration
        self.animationDelay = animationDelay
        self.animationDamping = animationDamping
        
    }
    
    public mutating func changeDescription() {
        
        animationDescription = ""
        
        animationDescription += "Animation type - \(animation)\n"
        animationDescription += "Animation curve - \(curve)\n"
        animationDescription += "Duration - \(String(format: "%.1f", animationDuration))\n"
        animationDescription += "Delay - \(String(format: "%.1f", animationDelay))\n"
        animationDescription += "Dumping - \(String(format: "%.1f", animationDamping))\n"
        
    }
    
}
