//
//  ViewController.swift
//  fishAnimationPartII
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let container = UIView()
    //let redSquare = UIView()
    //let blueSquare = UIView()
    
    @IBAction func animateButtonTapped(sender: AnyObject) {
        srand48(Int(NSDate().timeIntervalSince1970))
        
       
        for i in 0...2 {
            let fish1 = UIImageView()
            fish1.image = UIImage(named: "fish1.png")
            fish1.frame = CGRect(x: 55, y: 300, width: 80, height: 80)
            self.view.addSubview(fish1)
            
            //let redSquare = UIView()
            //redSquare.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
           // redSquare.backgroundColor = UIColor.redColor()
          //  self.view.addSubview(redSquare)
            
            let fish2 = UIImageView()
            fish2.image = UIImage(named: "fish2.png")
            fish2.frame = CGRect(x: 55, y: 300, width: 80, height: 80)
            self.view.addSubview(fish2)
           // //let blueSquare = UIView()
           // blueSquare.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
           // blueSquare.backgroundColor = UIColor.blueColor()
           // self.view.addSubview(blueSquare)
            
            
            
            // randomly create a value between 0.0 and 150.0
            let randomYOffset = CGFloat( drand48() * 150)
            
            // for every y-value on the bezier curve
            // add our random y offset so that each individual animation
            // will appear at a different y-position
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
            // create the animation
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = 5.0
            // each square will take between 4.0 and 8.0 seconds
            // to complete one animation loop
            anim.duration = 4.0 + 3 * drand48()
            
            // stagger each animation by a random value
            // `290` was chosen simply by experimentation
            anim.timeOffset = 290 * drand48()
            // add the animation 
            
            let anim2 = CAKeyframeAnimation(keyPath: "position")
            anim2.path = path.CGPath
            anim2.rotationMode = kCAAnimationRotateAuto
            anim2.repeatCount = Float.infinity
            anim2.duration = 4.0
            // each square will take between 4.0 and 8.0 seconds
            // to complete one animation loop
            anim2.duration = 3.0 + 3 * drand48()
            
            // stagger each animation by a random value
            // `290` was chosen simply by experimentation
            anim2.timeOffset = 270 * drand48()
            fish1.layer.addAnimation(anim, forKey: "animate position along path")
            fish2.layer.addAnimation(anim2, forKey: "animate position along path")
            
            
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pic2.jpg"))        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

