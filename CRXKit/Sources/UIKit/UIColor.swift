//
//  UIColor.swift
//  CRXKit
//
//  Created by Insu Byeon on 2020/12/04.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#if canImport(UIKit)
import UIKit

extension UIColor {
    
    public static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        return .init(
            red: red / 255,
            green: green / 255,
            blue: blue / 255,
            alpha: alpha
        )
    }
    
    public static func random() -> UIColor {
        return .rgb(
            red: .init(arc4random_uniform(255)),
            green: .init(arc4random_uniform(255)),
            blue: .init(arc4random_uniform(255)),
            alpha: .init(arc4random_uniform(10)) / 10
        )
    }
    
}
#endif
