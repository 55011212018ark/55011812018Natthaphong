//
//  ViewController.swift
//  coreAudio
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 student. All rights reserved.
//


import UIKit
import CoreMotion
import AVFoundation

class ViewController: UIViewController {
    
    var t1 = 0,t2=0 ,t3=0
    
    var text = "sound"
    
    @IBAction func Test1(sender: AnyObject) {
        
        audioPlayer1.play()
    }
    
    @IBAction func Test2(sender: AnyObject) {
        
        audioPlayer1.stop()
    }
    
    @IBAction func Test3(sender: AnyObject) {
        audioPlayer1.prepareToPlay()
    
    var audiPlayer = AVAudioPlayer()
        text = "sound2"
    var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(text, ofType: "mp3")!)
    
        coreAdio()
        audioPlayer1.play()
    
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        coreAdio()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    var audioPlayer1 = AVAudioPlayer()
    
    func coreAdio(){
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(text, ofType: "mp3")!)
        
        var error:NSError?
        audioPlayer1 = AVAudioPlayer(contentsOfURL: url1, error: &error)
        audioPlayer1.prepareToPlay()
        
        
        
        
    }
    
    
}