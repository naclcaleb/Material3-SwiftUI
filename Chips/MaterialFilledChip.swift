//
//  MaterialFilledChip.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialFilledChip<Content>: View where Content: View {
    var foregroundColor: Color = MaterialTheme.Colors.onPrimary
    var backgroundColor: Color = MaterialTheme.Colors.primary
    
    var content: () -> Content
    
    var body: some View {
        HStack {
            content()
        }
        .font(Font(materialTypescale: MaterialTheme.Typescale.bodyMedium))
        .foregroundColor(foregroundColor)
        .padding(.vertical, 5)
        .padding(.horizontal, 5)
        .background(
            RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.extraSmall)
                .fill(backgroundColor)
        )
    }
}

struct MaterialFilledChip_Previews: PreviewProvider {
    static var previews: some View {
        MaterialFilledChip {
            Text("Test Chip")
        }
    }
}
