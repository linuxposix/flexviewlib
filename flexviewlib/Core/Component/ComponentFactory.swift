//
//  ComponentFactory.swift
//  flexviewlib
//
//  Created by USER on 17/01/2020.
//  Copyright © 2020 posixlinux. All rights reserved.
//

import Foundation

class ComponentFactory {
    private func createLabel(_ info: [AnyHashable: Any]) -> LabelComponent {
        return LabelComponent()
    }
    
    private func createButton(_ info: [AnyHashable: Any]) -> ButtonComponent {
        return ButtonComponent()
    }
    
    private func createImageView(_ info: [AnyHashable: Any]) -> ImageViewComponent {
        return ImageViewComponent()
    }
    
    private func createLayer(_ info: [AnyHashable: Any]) -> LayerComponent {
        return LayerComponent()
    }
    
    private func dispatcher(_ jsonDic: [AnyHashable: Any]) -> ([AnyHashable: Any]) -> FlexComponent {
        guard let typeValue: String = jsonDic[FlexComponentType.key] as? String,
            let type: FlexComponentType = FlexComponentType(rawValue: typeValue) else {
                return self.createLayer
        }
        
        switch type {
        case .label:
            return self.createLabel
        case .button:
            return self.createButton
        case .imageView:
            return self.createImageView
        default:
            return self.createLayer
        }
    }
}

extension ComponentFactory {
    func parse(_ jsonDic: [AnyHashable: Any]) -> [FlexComponent] {
        return []
    }
}
