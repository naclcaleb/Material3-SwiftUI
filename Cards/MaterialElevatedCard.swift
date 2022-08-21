//
//  MaterialPrimaryContainerCard.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialElevatedCard<Content>: View where Content: View {
    var content: () -> Content
    
    var disabled: Bool = false
    
    var opacity: Double {
        return disabled ? 0.38 : 1
    }
    
    var body: some View {
        VStack {
            content()
        }
        .background(
            RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.large)
                .fill(MaterialTheme.Colors.surface)
                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 1.5, x: 0, y: 1.5)
        )
        .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.large))
        .opacity(opacity)
        .allowsHitTesting(!disabled)
    }
}

struct MaterialElevatedCard_Previews: PreviewProvider {
    static var previews: some View {
        MaterialElevatedCard(content: {
            Text("Test")
        })
    }
}
