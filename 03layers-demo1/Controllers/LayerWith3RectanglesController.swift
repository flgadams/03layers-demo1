//
//  LayerWith3RectanglesController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/3/22.
//

import UIKit

class LayerWith3RectanglesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        
        let layer1 = CALayer()
        layer1.backgroundColor = CGColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        layer1.frame = CGRect(x: 113, y: 111, width: 132, height: 194)
        self.view.layer.addSublayer(layer1)
        
        let layer2 = CALayer()
        layer2.backgroundColor =  CGColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        layer2.frame = CGRect(x: 41, y: 56, width: 132, height: 194)
        layer1.addSublayer(layer2)
        
        let imageView = UIImageView(image: UIImage(named: "banana"))
        self.view.addSubview(imageView)
        imageView.frame = CGRect(x: 180, y: 180, width: 100, height: 100)
        imageView.layer.zPosition = 1 //causes bananas to appear last (top)
        
        let layer3 = CALayer()
        layer3.backgroundColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        layer3.frame = CGRect(x: 43, y: 197, width: 160, height: 230)
        self.view.layer.addSublayer(layer3)
        layer3.masksToBounds = true
        
        
        
        
    }
    

  

}
