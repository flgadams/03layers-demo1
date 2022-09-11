//
//  LayerAnchorPointController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/9/22.
//

import UIKit

class LayerAnchorPointController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        
        let l2 = CALayer()
        self.view.layer.addSublayer(l2)
        l2.borderColor = .init(red: 1, green: 0, blue: 0, alpha: 1)
        l2.borderWidth = 3
    l2.frame = CGRect(x: 0, y: 100, width: 200, height: 200)
       // l2.bounds.size = CGSize(width: 100, height: 100)
        let l3 = CALayer()
        l3.borderWidth = 8
        l3.borderColor = .init(red: 0, green: 1, blue: 0, alpha: 1)
        
       l2.position = CGPoint(x: 100, y: 200)
        l2.anchorPoint = CGPoint(x: 0, y: 0) //TOP LEFT CORNER OF L2 IS PINNED TO 100,200 IN SUPER-LAYER
        
       // l3.anchorPoint = CGPoint(x: 1, y: 1)
       // l3.position = .init(x: 0, y: 0)
        
        l3.frame = CGRect(x: 150, y: 150, width: 50, height: 50)
        l2.addSublayer(l3)

        
        
        
        
        
    }
    

   

}
