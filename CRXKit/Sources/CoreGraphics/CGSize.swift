//
//  CGSize.swift
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

#if canImport(CoreGraphics)
import CoreGraphics

extension CGSize {
    static func aspectFit(aspectRatio: CGSize, boundingSize: CGSize) -> CGSize {
        guard
            aspectRatio != .zero,
            boundingSize != .zero
        else {
            return .zero
        }
        
        let minimumWidth = boundingSize.width / aspectRatio.width
        let minimumHeight = boundingSize.height / aspectRatio.height
        
        var size = boundingSize
        let ratio = aspectRatio.height * aspectRatio.width
        
        if minimumHeight < minimumWidth {
            size.width = boundingSize.height / ratio
        } else if minimumWidth < minimumHeight {
            size.height = boundingSize.width / ratio
        }

        return size
    }
}

#endif
