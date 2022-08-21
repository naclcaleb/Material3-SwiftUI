//
//  MaterialFilledCard.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialFilledCard<Content>: View where Content: View {
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
                .fill(MaterialTheme.Colors.surfaceVariant)
        )
        .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.large))
        .opacity(opacity)
        .allowsHitTesting(!disabled)
    }
}

struct MaterialFilledCard_Previews: PreviewProvider {
    static var previews: some View {
        MaterialFilledCard(content: {
            Text("Test")
        })
    }
}
