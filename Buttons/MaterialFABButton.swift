//
//  MaterialFABButton.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/28/22.
//

import SwiftUI

struct MaterialFABButtonStyle: ButtonStyle {
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
            return 30
        case .large:
            return 50
        case .extraLarge:
            return 70
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
            return Font(materialTypescale: MaterialTheme.Typescale.titleLarge)
        case .large:
            return Font(materialTypescale: MaterialTheme.Typescale.displaySmall)
        case .extraLarge:
            return Font(materialTypescale: MaterialTheme.Typescale.displayMedium)
        }
    }
    
    private var cornerRadius: CGFloat {
        switch size {
        case .small:
            return MaterialTheme.Shape.CornerStyle.large + 4
        case .large:
            return MaterialTheme.Shape.CornerStyle.large + 7
        case .extraLarge:
            return MaterialTheme.Shape.CornerStyle.extraLarge
        }
    }
    
    @State private var scale: CGFloat = 0.3
    @State private var circleX: CGFloat = 0.0
    @State private var circleY: CGFloat = 0.0
    @State private var opacity: CGFloat = 0.0
    
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration.label.frame(width: height, height: height, alignment: .center).padding(.horizontal, horizontalPadding)
            .padding(.vertical, verticalPadding)
            .background(
                GeometryReader { geometry in
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
                            .fill(MaterialTheme.Colors.primaryContainer)
                            .aspectRatio(contentMode: .fit)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 0, y: 4)
                        
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

struct MaterialFABButton: View {
    var icon: String
    var size: MaterialButton.Size = .large
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            Image(icon)
        }.buttonStyle(MaterialFABButtonStyle(size: size, action: action))

    }
}

struct MaterialFABButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MaterialFABButton(icon: "CloseIcon", size: .small, action: {})
            MaterialFABButton(icon: "CloseIcon", size: .large)
            MaterialFABButton(icon: "CloseIcon", size: .extraLarge, action: {})
        }
    }
}
