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
    


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    override func draw(_ rect: CGRect) {
      //  StyleKitName.drawCanvas1(frame: self.bounds, resizing: .aspectFit)
        
            let y:CGFloat = 20
           // let curveTo:CGFloat = 5
        
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
        
        
    }
    

    
}
