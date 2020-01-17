//
//  FlexFactory.swift
//  flexviewlib
//
//  Created by USER on 17/01/2020.
//  Copyright © 2020 posixlinux. All rights reserved.
//

import UIKit

public class FlexFactory {
    func generate(from jsonDic: [AnyHashable: Any]) -> UIView? {
        let components: [FlexComponent] = ComponentFactory().parse(jsonDic)
        
        let arrangedComponents: [FlexComponent] = LayoutResolver().rearrange(components)
        
        
        return nil
    }
    
    func generate(from jsonString: String) -> UIView? {
        return nil
    }
}
