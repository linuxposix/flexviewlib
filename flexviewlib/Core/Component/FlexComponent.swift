//
//  FlexComponent.swift
//  flexviewlib
//
//  Created by USER on 17/01/2020.
//  Copyright © 2020 posixlinux. All rights reserved.
//

import UIKit

enum FlexComponentType: String {
    case label = "label"
    case button = "button"
    case imageView = "imageView"
    case layer = "layer"
    
    static let key: String = "type"
}

protocol FlexComponent {
    var type: FlexComponentType { get }
    var margin: Position { get set }
    var border: Border { get set }
    var padding: UIEdgeInsets { get set }   // A.K.A. contentInset
}

struct Border {
    var width: CGFloat
    var color: UIColor
}

struct Position {
    enum PositionType {
        case relative
        case absolute
    }
    
    let type: PositionType
    var offset: UIEdgeInsets
    
    static var `default`: Position = Position(type: .relative, offset: .zero)
}
