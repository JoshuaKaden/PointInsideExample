//
//  ColorOrangeView.swift
//  PointInsideExample
//
//  Created by Kaden, Joshua on 5/4/18.
//  Copyright © 2018 NYC DoITT. All rights reserved.
//

import UIKit

class ColorOrangeView: UIView {
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        guard let _ = newWindow else { return }
        
        backgroundColor = .orange
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return super.point(inside: point, with: event)
    }
}
