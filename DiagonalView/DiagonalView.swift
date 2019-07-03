//
//  DiagonalView.swift
//  DiagonalView
//
//  Created by Mandeep Singh on 03/07/19.
//  Copyright © 2019 Mandeep Singh. All rights reserved.
//

import UIKit

class DiagonalView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.isOpaque = false
    }

    override open func draw(_ rect: CGRect) {
        
        // draw the diagnoal from left to right upper portion diagonally
//        let layerHeight = layer.frame.height
//        let layerWidth = layer.frame.width
//        // Create Path
//        let bezierPath = UIBezierPath()
//        //  Points
//        let pointA = CGPoint(x: 0, y: 0)
//        let pointB = CGPoint(x: layerWidth, y: 0)
//        let pointC = CGPoint(x: layerWidth, y: layerHeight/2.5)
//        let pointD = CGPoint(x: 0, y: layerHeight*2/3)
//        // Draw the path
//        bezierPath.move(to: pointA)
//        bezierPath.addLine(to: pointB)
//        bezierPath.addLine(to: pointC)
//        bezierPath.addLine(to: pointD)
//        bezierPath.close()
//        UIColor.red.setFill()
//        bezierPath.fill()
//
//        // Mask to Path
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = bezierPath.cgPath
//        layer.mask = shapeLayer
        
        
        // draw the diagnoal from left to right bottom part diagonally
        let layerHeight = layer.frame.height
        let layerWidth = layer.frame.width
        // Create Path
        let bezierPath = UIBezierPath()
        //  Points
        let pointA = CGPoint(x: 0, y: 0)
        let pointB = CGPoint(x: layerWidth, y: 0)
        let pointC = CGPoint(x: layerWidth, y: layerHeight)
        let pointD = CGPoint(x: 0, y: layerHeight*2/3)
        // Draw the path
        bezierPath.move(to: pointA)
        bezierPath.addLine(to: pointB)
        bezierPath.addLine(to: pointC)
        bezierPath.addLine(to: pointD)
        bezierPath.close()
        UIColor.red.setFill()
        bezierPath.fill()
        
        // Mask to Path
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = bezierPath.cgPath
        layer.mask = shapeLayer
        
    }

}
