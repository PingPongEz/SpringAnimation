//
//  ViewController.swift
//  SpringAnination
//
//  Created by u on 06.04.2022.
//

import Spring

class FlipAnimationsViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var animationDescription: UITextView!
    
    @IBOutlet var nextAnimationButton: UIButton!
    
    var animationModel = Animations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextAnimationButton.setTitle("Start", for: .normal)
        animationDescription.text = animationModel.animationDescription
        
        springView.layer.cornerRadius = 12
        nextAnimationButton.backgroundColor = .systemBlue
        nextAnimationButton.tintColor = .white
        nextAnimationButton.layer.cornerRadius = 12
        
    }
    
    @IBAction func nextButtonPressed() {
        nextAnimation()
        
        animationModel.changeDescription()
        
        animationDescription.text = animationModel.animationDescription
    }
    
}

//MARK: Next animation private
extension FlipAnimationsViewController {
    
    private func nextAnimation() {
        
        animate()
        
        let animation = Spring.AnimationPreset.allCases[Int.random(in: 0..<Spring.AnimationPreset.allCases.count)].rawValue
        
        let curve = Spring.AnimationCurve.allCases[Int.random(in: 0..<Spring.AnimationCurve.allCases.count)].rawValue
        
        let duration = Double.random(in: 0.5...2)
        let delay = Double.random(in: 0.5...1)
        let damping = Double.random(in: 0.3...1)
        
        nextAnimationButton.setTitle("Next - \(animation)", for: .normal)
        
        animationModel.setValues(forAnimation: animation,
                                 curve: curve,
                                 animationDuration: duration,
                                 animationDelay: delay,
                                 andDumping: damping)
        
    }
    
    private func animate() {
        
        springView.animation = animationModel.animation
        springView.curve = animationModel.curve
        springView.duration = animationModel.animationDuration
        springView.delay = animationModel.animationDelay
        springView.damping = animationModel.animationDamping
        springView.animate()
        
    }
}
