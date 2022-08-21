//
//  MaterialTextButton.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/28/22.
//

import SwiftUI

struct MaterialTextButtonStyle: ButtonStyle {
    var size: MaterialButton.Size
    
    private var horizontalPadding: CGFloat {
        switch size {
        case .small:
            return 15
        case .large:
            return 20
        case .extraLarge:
            return 22
        }
    }
    
    private var verticalPadding: CGFloat {
        switch size {
        case .small:
            return 15
        case .large:
            return 15
        case .extraLarge:
            return 17
        }
    }
    
    private var font: Font {
        switch size {
        case .small:
            return Font(materialTypescale: MaterialTheme.Typescale.titleMedium)
        case .large:
            return Font(materialTypescale: MaterialTheme.Typescale.labelLarge)
        case .extraLarge:
            return Font(materialTypescale: MaterialTheme.Typescale.headlineSmall)
        }
    }
    
    @State private var scale: CGFloat = 0.3
    @State private var circleX: CGFloat = 0.0
    @State private var circleY: CGFloat = 0.0
    @State private var opacity: CGFloat = 0.0
    
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration.label.padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .background(
                GeometryReader { geometry in
                    ZStack {
                        //Bubble
                        Circle()
                            .fill(Color.white)
                            .scaleEffect(scale)
                            .position(x: circleX, y: circleY)
                            .opacity(opacity)
                            .cornerRadius(100)
                    }
                })
            .foregroundColor(configuration.isPressed ? MaterialTheme.Colors.inversePrimary : MaterialTheme.Colors.primary)
            .animation(nil, value: configuration.isPressed)
            .font(font)
            
    }
}

struct MaterialTextButton<Content>: View where Content: View {
    var size: MaterialButton.Size = .large
    var action: () -> Void = {}
    var childView: () -> Content
    
    var body: some View {
        Button(action: action) {
            HStack {
                childView()
            }
        }.buttonStyle(MaterialTextButtonStyle(size: size))

    }
}

struct MaterialTextButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MaterialTextButton(size: .small, action: {}) {
                HStack {
                    Image("CloseIcon")
                    Text("Test Button")
                }
            }
            MaterialTextButton(size: .large, action: {}) {
                Text("Test Button")
            }
            MaterialTextButton(size: .extraLarge, action: {}) {
                HStack {
                    Image("CloseIcon")
                    Text("Test Button")
                }
            }
        }
    }
}
