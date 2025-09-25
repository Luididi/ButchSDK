//
//  ButchButton.swift
//  Butch
//
//  Created by Leo Heuser on 25.09.25.
//

import SwiftUI

public struct ButchButton: View {
    // MARK: - Parameters
    private let title: LocalizedStringKey?
    private let systemImage: String?
    private let action: () -> Void
    
    // MARK: - Initializers
    
    /// Button mit Text und Icon
    public init(_ title: LocalizedStringKey, systemImage: String, action: @escaping () -> Void) {
        self.title = title
        self.systemImage = systemImage
        self.action = action
    }
    
    /// Button nur mit Text
    public init(_ title: LocalizedStringKey, action: @escaping () -> Void) {
        self.title = title
        self.systemImage = nil
        self.action = action
    }
    
    /// Button nur mit Icon
    public init(systemImage: String, action: @escaping () -> Void) {
        self.title = nil
        self.systemImage = systemImage
        self.action = action
    }
    
    // MARK: - Component
    public var body: some View {
        Button(action: action) {
            ButtonContent(title: title, systemImage: systemImage)
        }
        .buttonStyle(ButchButtonStyle())
    }
}

// MARK: - Component Parts
extension ButchButton {
    
    /// Content layout für verschiedene Button-Varianten
    private struct ButtonContent: View {
        let title: LocalizedStringKey?
        let systemImage: String?
        
        var body: some View {
            HStack(spacing: .spacing4) {
                if let systemImage {
                    Image(systemName: systemImage)
                        .font(.system(size: 16))
                }
                
                if let title {
                    Text(title)
                        .font(.system(size: 16))
                }
            }
            .foregroundStyle(.primary)
        }
    }
    
    /// Button Style nach Figma-Design
    private struct ButchButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(.horizontal, .spacing16)
                .padding(.vertical, .spacing8)
                .background(.clear)
                .overlay(
                    RoundedRectangle(cornerRadius: .infinity)
                        .strokeBorder(Color.buttonBorder, lineWidth: 1)
                )
                .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
                .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
        }
    }
}

// MARK: - Semantic Color Tokens
extension Color {
    /// Button border - backgrounds/elementOutline aus Figma
    static let buttonBorder = Color("buttonBorder")  // #99999933
}

// MARK: - Example of Use and Preview
#Preview("Text + Icon") {
    ButchButton("button.save", systemImage: "square.and.arrow.down") {
        print("Save tapped")
    }
    .padding()
}

#Preview("Text Only") {
    ButchButton("button.save") {
        print("Save tapped")
    }
    .padding()
}

#Preview("Icon Only") {
    ButchButton(systemImage: "square.and.arrow.down") {
        print("Save tapped")
    }
    .padding()
}
