//
//  LayterContentsControllerViewController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/3/22.
//

import UIKit

class LayerContentsController: UIViewController {
// DEMO THAT the LAYER.CONTENTS IS A CGIMAGE
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        
        let layerWithCGImage = CALayer()
        let bananaImage = UIImage(named: "banana")!
        layerWithCGImage.contents = bananaImage.cgImage
        layerWithCGImage.contentsScale = 2 // 1 is too big
        layerWithCGImage.contentsGravity = .center
        //layerWithCGImage.contentsRect = CGRect(x: -0.2, y: -0.2, width: 1, height: 1)
        layerWithCGImage.frame = CGRect(origin: CGPoint(x: 180, y: 180), size: CGSize(width: 300, height: 350))
        
        self.view.layer.addSublayer(layerWithCGImage)
        
    }
    
}
