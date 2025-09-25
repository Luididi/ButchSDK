//
//  ButchTextField.swift
//  Butch
//
//  Created by Leo Heuser on 25.09.25.
//

import SwiftUI

public struct ButchTextField: View {
    @Binding private var text: String
    @FocusState private var isFocused: Bool
    
    private let placeholder: LocalizedStringKey
    
    public init(_ placeholder: LocalizedStringKey, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
        HStack(spacing: 8) {
            TextField(placeholder, text: $text)
                .focused($isFocused)
                .foregroundStyle(.primary)
            
            ClearButton(action: clearText)
                .scaleEffect(text.isEmpty ? 0.6 : 1.0)
                .opacity(text.isEmpty ? 0 : 1)
                .animation(.bouncy(duration: 0.3), value: text.isEmpty)
        }
        .padding(.leading, 16)
        .padding(.trailing, 8)
        .padding(.vertical, 8)
        .background(.clear)
        .overlay(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(.secondary, lineWidth: 1)
        )
    }
    
    private func clearText() {
        text = ""
        isFocused = true
    }
}

private struct ClearButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: 16))
                .foregroundStyle(.primary)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    @Previewable @State var text = ""
    
    ButchTextField("textfield.placeholder", text: $text)
        .padding()
}
