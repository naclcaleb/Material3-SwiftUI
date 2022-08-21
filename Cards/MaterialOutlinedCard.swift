//
//  MaterialOutlinedCard.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialOutlinedCard<Content>: View where Content: View {
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
                .stroke(MaterialTheme.Colors.outline, lineWidth: 2)
                .overlay(
                    RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.large)
                        .fill(MaterialTheme.Colors.surface)
                )
        )
        .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.large))
        .opacity(opacity)
        .allowsHitTesting(!disabled)
    }
}

struct MaterialOutlinedCard_Previews: PreviewProvider {
    static var previews: some View {
        MaterialOutlinedCard(content: {
            Text("Test").padding(20)
        })
    }
}
