//
//  ViewController.swift
//  template-swift-no-sb
//
//  Created by Glenn Adams on 7/30/22.
// A Swift project template for UIKit apps, no storyboards
// layout views vertially
// ideal for buttons

import UIKit

class RootViewController: UIViewController {

    lazy var aButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("A: Layers w/ 3 Rectangles ", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(aButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func aButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        let vc = LayerWith3RectanglesController()
        present(vc, animated: true)
    }
    
    lazy var bButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("B: Layer Contents is CGImage", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(bButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func bButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(LayerContentsController(), animated: true)
    }
    lazy var cButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("C: AnchorPoint ", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(cButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func cButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(LayerAnchorPointController(), animated: true)
    }
    
    lazy var dButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("D: Position a layer, and CATextLayer", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(dButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func dButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(PositionLayerController(), animated: true)
        
    }
    lazy var eButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("E: CAShapeLayer", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(eButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    
    @objc fileprivate func eButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(ShapeLayerController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        var constraintsArr=[NSLayoutConstraint]()
        
        let viewArr = [aButton, bButton, cButton, dButton, eButton]
        var viewDict=Dictionary<String,UIView>()
        var vFormat = "V:|"
        var hFormat = ""

        for (i,eachView) in viewArr.enumerated() {
            view.addSubview(eachView)
            eachView.translatesAutoresizingMaskIntoConstraints=false
            vFormat = vFormat + "-25-[v\(i)(75)]" //25 gap between buttons
            hFormat =  "H:|-[v\(i)]-|" //8 from edges
            let h = NSLayoutConstraint.constraints(withVisualFormat: hFormat, metrics: nil, views: ["v\(i)":eachView])
            constraintsArr.append(contentsOf: h)
            viewDict["v\(i)"] = eachView
        }
        
        let v = NSLayoutConstraint.constraints(withVisualFormat: vFormat, metrics: nil, views: viewDict)
        constraintsArr.append(contentsOf: v)
        
        NSLayoutConstraint.activate(constraintsArr.compactMap{$0})
    }
    
    
}

