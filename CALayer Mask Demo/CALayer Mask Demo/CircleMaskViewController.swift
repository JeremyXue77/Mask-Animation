//
//  ViewController.swift
//  CALayer Mask Demo
//
//  Created by JeremyXue on 2018/6/7.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class CircleMaskViewController: UIViewController {
    
    let mask = CALayer()
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mask.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        mask.backgroundColor = UIColor.black.cgColor
        mask.cornerRadius = 100
        mask.position = view.center
        
        myImage.layer.mask = mask
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(animationMask), userInfo: nil, repeats: true)
    }
    
    @objc func animationMask() {

        let xPosition = CGFloat(arc4random() % UInt32(view.frame.maxX))
        let yPosition = CGFloat(arc4random() % UInt32(view.frame.maxY))

        let animation = CABasicAnimation(keyPath: "position")
        animation.toValue = CGPoint(x: xPosition, y: yPosition)
        animation.duration = 10

        mask.add(animation, forKey: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

