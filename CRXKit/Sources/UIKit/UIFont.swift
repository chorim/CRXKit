//
//  UIFont.swift
//  CRXKit
//
//  Created by Insu Byeon on 2020/12/13.
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

extension UIFont {
    
    public static func AppleSDGothic(fontSize: CGFloat, weight: Weight) -> UIFont {
        var fontName: String = "AppleSDGothicNeo-Regular"
        switch weight {
        case .thin: fontName = "AppleSDGothicNeo-Thin"
        case .light: fontName = "AppleSDGothicNeo-Light"
        case .ultraLight: fontName = "AppleSDGothicNeo-UltraLight"
        case .semibold: fontName = "AppleSDGothicNeo-SemiBold"
        case .medium: fontName = "AppleSDGothicNeo-Medium"
        case .bold: fontName = "AppleSDGothicNeo-Bold"


        case .regular: fontName = "AppleSDGothicNeo-Regular"
        default: fontName = "AppleSDGothicNeo-Regular"
        }
        
        guard
            let font = UIFont(name: fontName, size: fontSize)
        else {
            return .systemFont(ofSize: fontSize, weight: weight)
        }

        return font
    }

    public static func AppleSDGothicNeoThin(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .thin)
    }
    
    public static func AppleSDGothicNeoUltraLight(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .ultraLight)
    }
    
    public static func AppleSDGothicNeoSemiBold(_ fontSize: CGFloat) -> UIFont {
         return .AppleSDGothic(fontSize: fontSize, weight: .semibold)
    }
    
    public static func AppleSDGothicNeoMedium(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .medium)
    }
    
    public static func AppleSDGothicNeoRegular(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .regular)
    }
    
    public static func AppleSDGothicNeoBold(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .bold)
    }
    
    public static func AppleSDGothicNeoLight(_ fontSize: CGFloat) -> UIFont {
        return .AppleSDGothic(fontSize: fontSize, weight: .light)
    }
    
}

#endif
