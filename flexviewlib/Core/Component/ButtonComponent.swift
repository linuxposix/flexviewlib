//
//  ButtonComponent.swift
//  flexviewlib
//
//  Created by USER on 17/01/2020.
//  Copyright © 2020 posixlinux. All rights reserved.
//

import UIKit

class ButtonComponent: FlexComponent {
    let type: FlexComponentType = .button
    
    var margin: Position = .default
    var border: Border = Border(width: 0, color: UIColor.white)
    var padding: UIEdgeInsets = .zero
}
