//
//  PositionLayerController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/10/22.
//

import UIKit

class PositionLayerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .brown

        let l1 = CALayer()
        self.view.layer.addSublayer(l1)
        let bananaUIImage = UIImage(named: "banana")!
        let bananaCGImage = bananaUIImage.cgImage
        l1.contents = bananaCGImage
        l1.borderWidth = 4
        l1.backgroundColor = .init(red: 1, green: 0, blue: 0, alpha: 1)
        print(bananaUIImage.size)
        l1.frame = CGRect(origin: CGPoint(x: 3, y: 100), size: bananaUIImage.size)
        l1.contentsScale = 2 // no change
        print(l1.contentsScale)
        
        let l2 = CATextLayer()
        self.view.layer.addSublayer(l2)
        l2.string = "THIS IS A TEST"
        l2.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 50)
        
        
    }
    

 

}
