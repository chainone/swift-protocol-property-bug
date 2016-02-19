//
//  UICompany.swift
//  SwiftProtoclProperty
//
//  Created by ChenYong on 2/19/16.
//  Copyright © 2016 chainone. All rights reserved.
//

import Foundation

struct UICompany{
    let oxygenId: String
    let hasAssignee: String
    let name: String
    
}

extension UICompany: Comparable{}

extension UICompany: Equatable{}

func ==(lhs: UICompany, rhs: UICompany) -> Bool {
    return lhs.oxygenId == rhs.oxygenId && lhs.name == rhs.name && lhs.hasAssignee == rhs.hasAssignee
}

func <(lhs: UICompany, rhs: UICompany) -> Bool {
    return lhs.name.localizedCaseInsensitiveCompare(rhs.name) == .OrderedAscending ? true : false
}
