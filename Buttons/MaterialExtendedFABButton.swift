//
//  MaterialExtendedFABButton.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/28/22.
//

import SwiftUI

struct MaterialExtendedFABButtonStyle: ButtonStyle {
    var size: MaterialButton.Size
    var action: () -> Void
    
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
    
    private var height: CGFloat {
        switch size {
        case .small:
            return 50
        case .large:
            return 65
        case .extraLarge:
            return 80
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
                        RoundedRectangle(cornerSize: CGSize(width: MaterialTheme.Shape.CornerStyle.large, height: MaterialTheme.Shape.CornerStyle.large))
                            .fill(MaterialTheme.Colors.primaryContainer)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 1, x: 0, y: 2)
                        
                        //Bubble
                        Circle()
                            .fill(Color.white)
                            .scaleEffect(scale)
                            .position(x: circleX, y: circleY)
                            .opacity(opacity)
                            .cornerRadius(100)
                    }
                })
            .foregroundColor(MaterialTheme.Colors.onPrimaryContainer).font(font)
            .onTapGesture {
                action()
            }
            .simultaneousGesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged { value in
                    self.opacity = 0
                    self.circleX = value.startLocation.x
                    self.circleY = value.startLocation.y
                    self.scale = 0
                    withAnimation {
                        self.scale = 7.5
                    }
                    
                    withAnimation(.easeInOut) {
                        self.opacity = 0.5
                    }
                }.onEnded { value in
                    withAnimation {
                        self.opacity = 0
                    }
                })
            
            
    }
}

struct MaterialExtendedFABButton<Content>: View where Content: View {
    var size: MaterialButton.Size = .large
    var action: () -> Void = {}
    var childView: () -> Content
    
    var body: some View {
        Button(action: action) {
            HStack {
                childView()
            }
        }.buttonStyle(MaterialExtendedFABButtonStyle(size: size, action: action))

    }
}

struct MaterialExtendedFABButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MaterialExtendedFABButton(size: .small, action: {}) {
                HStack {
                    Image("CloseIcon")
                    Text("Test Button")
                }
            }
            MaterialExtendedFABButton(size: .large, action: {}) {
                Text("Test Button")
            }
            MaterialExtendedFABButton(size: .extraLarge, action: {}) {
                Text("Test Button")
            }
        }
    }
}
