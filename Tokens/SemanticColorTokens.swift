//
//  SemanticColorTokens.swift
//  Butch
//
//  Created by Leo Heuser on 26.09.25.
//

import SwiftUI

/// Semantic Color Tokens - Referenzieren Primitive Tokens
public extension Color {
    
    // MARK: - Text Colors
    
    static var textPrimary: Color {
        adaptiveColor(light: .gray000, dark: .gray100)
    }
    
    static var textSecondary: Color {
        adaptiveColor(light: .gray050, dark: .gray060)
    }
    
    static var textTertiary: Color {
        adaptiveColor(light: .gray070, dark: .gray040)
    }
    
    // MARK: - Background Colors
    
    static var backgroundPrimary: Color {
        adaptiveColor(light: .gray100, dark: .gray010)
    }
    
    static var backgroundSecondary: Color {
        adaptiveColor(light: .gray090, dark: .gray020)
    }
    
    // MARK: - Accent Colors
    
    static var accentPrimary: Color { .orange050 }
    static var accentSecondary: Color { .orange030 }
    
    // MARK: - Border Colors
    
    static var borderPrimary: Color {
        adaptiveColor(light: .gray070, dark: .gray040)
    }
    
    static var borderSecondary: Color {
        adaptiveColor(light: .gray080, dark: .gray030)
    }
    
    // MARK: - Component-specific Semantic Tokens
    
    static var textFieldBorder: Color { borderSecondary }
    static var buttonBorder: Color { borderPrimary }
    static var tagBorder: Color { borderSecondary }
}
