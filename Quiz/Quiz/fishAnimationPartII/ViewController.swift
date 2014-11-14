//
//  ViewController.swift
//  fishAnimationPartII
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var anchorView: UIView!
    var attachment: UIAttachmentBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var snap: UISnapBehavior!
    let air = UIImageView()
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        
        attachment.anchorPoint = sender.locationInView(view)
        anchorView.center = sender.locationInView(view)
        
    }
    @IBAction func animateButtonTapped(sender: AnyObject) {
        srand48(Int(NSDate().timeIntervalSince1970))
        
        air.image = UIImage(named: "ufo.png")
        air.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
        self.view.addSubview(air)
        
        //view.addSubview(air)
        
        anchorView = UIView(frame: CGRect(x: 200, y: 300, width: 20, height: 20))
        anchorView.backgroundColor = UIColor.redColor()
        view.addSubview(anchorView)
        
        attachment = UIAttachmentBehavior(item: air, attachedToAnchor: CGPointMake(anchorView.center.x, anchorView.center.y))
        
        animator = UIDynamicAnimator(referenceView: view)
        animator.addBehavior(attachment)
        
        gravity = UIGravityBehavior(items: [air])
        animator.addBehavior(gravity)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "sky_107.bmp"))
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if (snap != nil) {
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: anchorView, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
        
        
    
    }
}




