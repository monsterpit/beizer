//
//  Beizer.swift
//  beizer
//
//  Created by MyGlamm on 8/1/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

import UIKit
@IBDesignable
class Beizer: UIView {
    
    private var imageView : UIImageView!
    
    private var label = UILabel()
    
    var labelText = ""{
        didSet {
            label.text = labelText
          
            
        }
        
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        setupLabel(text : labelText)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupLabel(text : labelText)
    }
    
    
    private func setupLabel(text : String){
        
        label.text = "My Default value is My Default value is My Default value is My Default value is My Default value is My Default value is"
        label.numberOfLines = 2
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: label,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .leading, multiplier: 1,
                           constant: 8).isActive = true
        NSLayoutConstraint(item: label,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .trailing, multiplier: 1,
                           constant: -(frame.width * 0.25)).isActive = true
        
        NSLayoutConstraint(item: label,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .centerY, multiplier: 1,
                           constant: 0).isActive = true
        
    }
    
    
    override func draw(_ rect: CGRect) {
        
        
        let y:CGFloat = 20
        
        let myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: y))
        myBezier.addLine(to: CGPoint(x: rect.width * 0.7, y: y))
        
        myBezier.addQuadCurve(to: CGPoint(x: rect.width * 0.75, y: 15), controlPoint: CGPoint(x: rect.width * 0.725, y: 20.5))
        
        myBezier.addQuadCurve(to: CGPoint(x: rect.width * 0.85, y: 0), controlPoint: CGPoint(x: rect.width * 0.8, y: 0))
        
        
        
        
        myBezier.addQuadCurve(to: CGPoint(x: rect.width * 0.95, y: 15), controlPoint: CGPoint(x: rect.width * 0.9, y: 0))
        
        
        
        myBezier.addQuadCurve(to: CGPoint(x: rect.width , y: 20), controlPoint: CGPoint(x: rect.width * 0.97, y: 20.5))
        
        
        myBezier.addLine(to: CGPoint(x: rect.width, y: rect.height))
        myBezier.addLine(to: CGPoint(x: 0, y: rect.height))
        myBezier.close()
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(4.0)
        UIColor.blue.setFill()
        myBezier.fill()
        
        if let image = UIImage.init(named: "70776Copy.png", in: Bundle(for: self.classForCoder), compatibleWith: traitCollection){
            print("found it")
            image.draw(in: CGRect(x: (rect.width * 0.85) - 16 , y: 8, width: rect.width * 0.1, height: rect.width * 0.1))
        }
        
        
    }
    
    
}
