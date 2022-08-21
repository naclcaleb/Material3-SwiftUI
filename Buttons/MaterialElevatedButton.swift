//
//  MaterialElevatedButton.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/28/22.
//

import SwiftUI

struct MaterialElevatedButtonStyle: ButtonStyle {
    var size: MaterialButton.Size
    
    private var horizontalPadding: CGFloat {
        switch size {
        case .small:
            return 20
        case .large:
            return 25
        case .extraLarge:
            return 27
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
                        Capsule().fill(configuration.isPressed ? MaterialTheme.Colors.surfaceVariant : MaterialTheme.Colors.surface).shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 0, y: 2)
                        
                        //Bubble
                        Circle()
                            .fill(Color.white)
                            .scaleEffect(scale)
                            .position(x: circleX, y: circleY)
                            .opacity(opacity)
                            .cornerRadius(100)
                    }
                })
            .foregroundColor(MaterialTheme.Colors.primary).font(font)
    
            
    }
}

struct MaterialElevatedButton<Content>: View where Content: View {
    var size: MaterialButton.Size = .large
    var action: () -> Void = {}
    var childView: () -> Content
    
    var body: some View {
        Button(action: action) {
            HStack {
                childView()
            }
        }.buttonStyle(MaterialElevatedButtonStyle(size: size))

    }
}

struct MaterialElevatedButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MaterialElevatedButton(size: .small, action: {}) {
                Text("Test Button")
            }
            MaterialElevatedButton(size: .large, action: {}) {
                Text("Test Button")
            }
            MaterialElevatedButton(size: .extraLarge, action: {}) {
                Text("Test Button")
            }
        }
    }
}
