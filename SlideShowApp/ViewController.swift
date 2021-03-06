//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 岩内順平 on 2020/10/28.
//  Copyright © 2020 Jumpei Iwauchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView : UIImageView!
    
    @IBOutlet weak var startStopButton: UIButton!
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var susumuButton: UIButton!
    
    @IBOutlet weak var modoruButton: UIButton!
    
    
    var imageIndex = 0
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    
    
    let images = [UIImage(named: "inu1"), UIImage(named: "inu2"), UIImage(named: "inu3")]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // segueから遷移先のResultViewControllerを取得する
    let nextViewController:NextViewController = segue.destination as! NextViewController
    nextViewController.image = imageView.image!
    }
    @IBAction func startButton(_ sender: Any) {
        
        
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
    }
    @IBAction func backButton(_ sender: Any) {
        
        
        
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
        
        
    }
    
    
    
    
    @IBAction func startStop(_ sender: Any) {
        
        if (timer == nil) {
            susumuButton.isEnabled = false
            modoruButton.isEnabled = false
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            startStopButton.setTitle("停止", for: .normal)

            
        } else {
            if self.timer != nil {
                self.timer.invalidate()
                self.timer = nil
                susumuButton.isEnabled = true
                modoruButton.isEnabled = true
                startStopButton.setTitle("再生", for: .normal)
            }
            
        }
        
        
    }
    @objc func onTimer(_ timer: Timer) {
        
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
        
    }
    
    
    
    
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    
}

