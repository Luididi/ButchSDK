//
//  PrimitiveColorTokens.swift
//  Butch
//
//  Created by Leo Heuser on 26.09.25.
//

import SwiftUI

/// Alpha-basierte Primitive Color Tokens - 3 Basis-Scales
public extension Color {
    
    // MARK: - Black Alpha Scale (für dunkle Elemente auf hellen Hintergründen)
    
    static let blackAlpha100 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1.0)   // Vollschwarz
    static let blackAlpha090 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.9)   // 90% Schwarz
    static let blackAlpha080 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.8)   // 80% Schwarz
    static let blackAlpha070 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.7)   // 70% Schwarz
    static let blackAlpha060 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.6)   // 60% Schwarz
    static let blackAlpha050 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5)   // 50% Schwarz
    static let blackAlpha040 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.4)   // 40% Schwarz
    static let blackAlpha030 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3)   // 30% Schwarz
    static let blackAlpha020 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2)   // 20% Schwarz
    static let blackAlpha010 = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.1)   // 10% Schwarz
    
    // MARK: - White Alpha Scale (für helle Elemente auf dunklen Hintergründen)
    
    static let whiteAlpha100 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 1.0)   // Vollweiß
    static let whiteAlpha090 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.9)   // 90% Weiß
    static let whiteAlpha080 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.8)   // 80% Weiß
    static let whiteAlpha070 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.7)   // 70% Weiß
    static let whiteAlpha060 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.6)   // 60% Weiß
    static let whiteAlpha050 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.5)   // 50% Weiß
    static let whiteAlpha040 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.4)   // 40% Weiß
    static let whiteAlpha030 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.3)   // 30% Weiß
    static let whiteAlpha020 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.2)   // 20% Weiß
    static let whiteAlpha010 = Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.1)   // 10% Weiß
    
    // MARK: - Orange Alpha Scale (für accent-basierte Elemente)
    
    static let orangeAlpha100 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 1.0)   // Voll-Orange (orange050)
    static let orangeAlpha090 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.9)   // 90% Orange
    static let orangeAlpha080 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.8)   // 80% Orange
    static let orangeAlpha070 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.7)   // 70% Orange
    static let orangeAlpha060 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.6)   // 60% Orange
    static let orangeAlpha050 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.5)   // 50% Orange
    static let orangeAlpha040 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.4)   // 40% Orange
    static let orangeAlpha030 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.3)   // 30% Orange
    static let orangeAlpha020 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.2)   // 20% Orange
    static let orangeAlpha010 = Color(.sRGB, red: 1.0, green: 0.451, blue: 0.2, opacity: 0.1)   // 10% Orange
}
