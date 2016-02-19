//
//  Assigneeable.swift
//  SwiftProtoclProperty
//
//  Created by ChenYong on 2/19/16.
//  Copyright © 2016 chainone. All rights reserved.
//

import Foundation



protocol Assigneeable{
    
    var name: String{get}
    var hasAssignee: String {get}
    var oxygenId: String {get}
    
}


extension UIRole: Assigneeable{
    
}

extension UICompany: Assigneeable{
    
}

