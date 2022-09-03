//
//  LayterContentsControllerViewController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/3/22.
//

import UIKit

class LayerContentsController: UIViewController {
// DEMO THAT A LAYER.CONTENTS IS A CGIMAGE
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        
        let layerWithCGImage = CALayer()
        let bananaImage = UIImage(named: "banana")!
        layerWithCGImage.contents = bananaImage.cgImage
        layerWithCGImage.frame = CGRect(origin: CGPoint(x: 180, y: 180), size: CGSize(width: 150, height: 150))
        
        self.view.layer.addSublayer(layerWithCGImage)
        
    }
    
}
