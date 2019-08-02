//
//  StyleKitName.swift
//  beizer
//
//  Created by MyGlamm on 8/1/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

import UIKit

class StyleKitName: NSObject {
    //// Drawing Methods
    
    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 1024, height: 77), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 300, height: 77), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 300, y: resizedFrame.height / 77)
        
        
        //// Group 2
        //// b Drawing
        let bPath = UIBezierPath()
        bPath.move(to: CGPoint(x: 233.23, y: 11))
        bPath.addCurve(to: CGPoint(x: 243.36, y: 7.69), controlPoint1: CGPoint(x: 236.54, y: 10.93), controlPoint2: CGPoint(x: 239.92, y: 9.83))
        bPath.addCurve(to: CGPoint(x: 264.62, y: 0), controlPoint1: CGPoint(x: 248.52, y: 4.49), controlPoint2: CGPoint(x: 255.3, y: 0))
        bPath.addCurve(to: CGPoint(x: 287.1, y: 7.69), controlPoint1: CGPoint(x: 273.94, y: 0), controlPoint2: CGPoint(x: 281.27, y: 4.38))
        bPath.addCurve(to: CGPoint(x: 299.8, y: 11), controlPoint1: CGPoint(x: 292.92, y: 11), controlPoint2: CGPoint(x: 295.64, y: 11))
        bPath.addLine(to: CGPoint(x: 300, y: 11))
        bPath.addLine(to: CGPoint(x: 300, y: 77))
        bPath.addLine(to: CGPoint(x: 0, y: 77))
        bPath.addLine(to: CGPoint(x: 0, y: 11))
        bPath.addLine(to: CGPoint(x: 233.23, y: 11))
        bPath.close()
        bPath.usesEvenOddFillRule = true
        UIColor.red.setFill()
        bPath.fill()
        UIColor.green.setStroke()
        bPath.lineWidth = 0
        bPath.miterLimit = 4
        bPath.stroke()
       // bPath.addClip()
        context.restoreGState()
        
    }
    
    
    
    
    @objc(StyleKitNameResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
