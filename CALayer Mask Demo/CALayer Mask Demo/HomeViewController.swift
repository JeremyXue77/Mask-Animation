//
//  HomeViewController.swift
//  CALayer Mask Demo
//
//  Created by JeremyXue on 2018/6/8.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var maskButton: [UIButton]! {
        didSet {
            for button in maskButton {
                button.layer.cornerRadius = button.frame.height / 2
                button.clipsToBounds = true
                button.layer.borderColor = UIColor.white.cgColor
                button.layer.borderWidth = 3
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
