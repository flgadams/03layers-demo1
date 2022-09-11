//
//  ShapeLayerController.swift
//  03layers-demo1
//
//  Created by Glenn Adams on 9/10/22.
//

import UIKit

class ShapeLayerController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .brown
        
        let l1 = CAShapeLayer()
        self.view.layer.addSublayer(l1)
        l1.borderWidth = 3
        l1.borderColor = UIColor.white.cgColor
        l1.backgroundColor = UIColor.gray.cgColor
        l1.frame = CGRect(x: 50, y: 100, width: 200, height: 200)
        l1.masksToBounds = true
        
        let circleUIPath = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi ), clockwise: true)
        let circleCGPath = circleUIPath.cgPath
        l1.path = circleCGPath
  
        // the shape layer is added without a frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 20))
        path.addLine(to: CGPoint(x: 200, y: 20))
        path.move(to: CGPoint(x: 0, y: 30))
        path.addLine(to: CGPoint(x: 200, y: 30))
        // did not give the sublayer a frame !!!!
        let shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.blue.cgColor
       // shapeLayer.frame = self.view.layer.bounds
        // the text layer is added with a frame
        let tl = CATextLayer()
        tl.fontSize = CGFloat(16)
        print(tl.font)
        tl.string = "HI THERE"
        tl.frame = CGRect(origin: CGPoint(x: 0, y: 550), size: CGSize(width: 400, height: 50))
       // tl.position = CGPoint(x: 0, y: 500)
        //tl.anchorPoint = CGPoint(x: 0, y: 0)
        
        self.view.layer.addSublayer(tl)
     
    }
    
}
