//
//  UIRole.swift
//  SwiftProtoclProperty
//
//  Created by ChenYong on 2/19/16.
//  Copyright © 2016 chainone. All rights reserved.
//

import Foundation


struct UIRole {
    let hasAssignee: String
    let oxygenId: String
    let name: String
    
}

extension UIRole: Comparable{}

extension UIRole: Equatable{}

func ==(lhs: UIRole, rhs: UIRole) -> Bool {
    //
    //FIXME:  Is it a swift bug?
    // If I comment ```&& lhs.hasAssignee == rhs.hasAssignee``` here, compile will report error
    // However, if I put code in UIRole.swift, Assigneeable.swift into one single Swift file , it compiles
    //
    
    return lhs.oxygenId == rhs.oxygenId && lhs.name == rhs.name /*&& lhs.hasAssignee == rhs.hasAssignee*/
}

func <(lhs: UIRole, rhs: UIRole) -> Bool {
    return lhs.name.localizedCaseInsensitiveCompare(rhs.name) == .OrderedAscending ? true : false
}
