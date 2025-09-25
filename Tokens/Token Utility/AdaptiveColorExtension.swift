//
//  AdaptiveColorExtension.swift
//  Butch
//
//  Created by Leo Heuser on 26.09.25.
//

import SwiftUI

extension Color {
    
    static func adaptiveColor(light: Color, dark: Color) -> Color {
        Color(UIColor { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark: return UIColor(dark)
            default: return UIColor(light)
            }
        })
    }
} // extension
