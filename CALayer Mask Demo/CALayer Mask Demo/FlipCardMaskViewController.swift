//
//  TriangleMaskViewController.swift
//  CALayer Mask Demo
//
//  Created by JeremyXue on 2018/6/8.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class FlipCardMaskViewController: UIViewController {
    
    let mask = CALayer()

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mask.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        mask.backgroundColor = UIColor.black.cgColor
        myImage.layer.mask = mask
        
        animationMask()
        
    }
    
    func animationMask() {
        
        let animation = CABasicAnimation(keyPath: "transform.rotation.y")
        animation.toValue = Double.pi * 2
        animation.duration = 3
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
