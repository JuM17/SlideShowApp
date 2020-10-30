//
//  NextViewController.swift
//  SlideShowApp
//
//  Created by 岩内順平 on 2020/10/29.
//  Copyright © 2020 Jumpei Iwauchi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    var image: UIImage!
    
    let images = [UIImage(named: "inu1"), UIImage(named: "inu2"), UIImage(named: "inu3")]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      imageView.image = self.image
       
  
        
        
    }
    
}

