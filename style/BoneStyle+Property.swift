//
//  {{name | firstUpperCase}}+Property.swift
//  
//
//  Created by Andrea Bellotto on 14/01/2020.
//

import UIKit
import DressCode

public extension {{name | firstUpperCase}} where View:UILabel{
    func style(for theme:Themeable) -> Property<View> {
        return .empty() // comment this line and style as you wish
    }
}

public extension {{name | firstUpperCase}} where View:UIButton{
    func style(for theme:Themeable) -> Property<View> {
        return .empty() // comment this line and style as you wish
    }
}

public extension {{name | firstUpperCase}} where View:UITextField{
    func style(for theme:Themeable) -> Property<View> {
        return .empty() // comment this line and style as you wish
    }
}

