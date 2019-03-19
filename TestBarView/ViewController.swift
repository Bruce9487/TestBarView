//
//  ViewController.swift
//  TestBarView
//
//  Created by APP技術部-陳冠志 on 2019/3/18.
//  Copyright © 2019 APP技術部-陳冠志. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var maskView: UIView!
    
    var numberX: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topImageView.mask = maskView
    }
    
    
    @IBAction func addBtnClicked(_ sender: Any) {
        
        let tmpNumberX = self.numberX
        
        numberX += (topImageView.frame.width*0.33)
    
        guard numberX <= topImageView.frame.width else {
            self.numberX = tmpNumberX
            return
        }
        
        let newMaskViewFrame = CGRect(x: 0,
                                      y: maskView.frame.origin.y,
                                      width: numberX,
                                      height: maskView.frame.height)
        
        maskView.frame = newMaskViewFrame
        
//        print("add mask: \(maskView.frame)")
//        print("add mask: \(maskView.frame.midX) ,\(maskView.frame.minX), \(maskView.frame.maxX)\n\n")
    }
    
    @IBAction func minusBtnClicked(_ sender: Any) {
        
        let tmpNumberX = self.numberX
        
        numberX -= (topImageView.frame.width*0.33)
        
        guard numberX >= 0 else {
            self.numberX = tmpNumberX
            return
        }
        
        let newMaskViewFrame = CGRect(x: 0,
                                      y: maskView.frame.origin.y,
                                      width: numberX,
                                      height: maskView.frame.height)
        maskView.frame = newMaskViewFrame
        
//        print("min mask: \(maskView.frame)")
//        print("min mask: \(maskView.frame.midX) ,\(maskView.frame.minX), \(maskView.frame.maxX)\n\n")
    }
    
}

