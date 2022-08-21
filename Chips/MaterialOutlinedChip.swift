//
//  MaterialChip.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialOutlinedChip<Content>: View where Content: View {

    var mainColor: Color = MaterialTheme.Colors.primary
    
    var content: () -> Content
    
    var body: some View {
        HStack {
            content()
        }
            .font(Font(materialTypescale: MaterialTheme.Typescale.bodyMedium))
            .foregroundColor(mainColor)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.extraSmall)
                    .strokeBorder(mainColor, lineWidth: 1)
            )
    }
}

struct MaterialOutlinedChip_Previews: PreviewProvider {
    static var previews: some View {
        MaterialOutlinedChip() {
            Text("Test Chip")
        }
    }
}
