//
//  BezierPathsView.swift
//  Dropit
//
//  Created by Carlo Cossette on 2015-06-11.
//  Copyright (c) 2015 C Cossette. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {
    
    private var bezierPaths = [String:UIBezierPath]()

    func setPath(path: UIBezierPath?, named name: String)
    {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths
        {
            path.stroke()
        }
    }
   
}
