//
//  TransformViewController.swift
//  CALayer Mask Demo
//
//  Created by JeremyXue on 2018/6/8.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class TransformViewController: UIViewController {
    
    let mask = CALayer()

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mask.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        mask.position = myImage.center
        mask.cornerRadius = 100
        mask.masksToBounds = true
        mask.backgroundColor = UIColor.black.cgColor
        
        myImage.layer.mask = mask
        
        animationMask()
    }
    
    func animationMask() {
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.fromValue = [0.01,0.01]
        animation.toValue = [5,5]
        animation.duration = 5
        animation.autoreverses = true
        animation.repeatCount = Float.infinity
        mask.add(animation, forKey: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
