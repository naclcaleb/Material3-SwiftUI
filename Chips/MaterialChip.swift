//
//  MaterialChip.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialChip: View {
    
    var icon: MaterialTheme.Icon?
    var label: String
    var style: ChipStyle
    var tintColor: Color = MaterialTheme.Colors.primary
    
    enum ChipStyle {
        case outlined
        case filled
    }
    
    func content() -> some View {
        HStack {
            if let icon = icon {
                Image(icon.rawValue)
            }
            Text(label)
        }
    }
    
    var body: some View {
        switch style {
        case .outlined:
            MaterialOutlinedChip(mainColor: tintColor) {
                content()
            }
        case .filled:
            MaterialFilledChip(foregroundColor: MaterialTheme.Colors.onSurface, backgroundColor: tintColor) {
                content()
            }
        }
    }
}

struct MaterialChip_Previews: PreviewProvider {
    static var previews: some View {
        MaterialChip(label: "Test Chip", style: .filled, tintColor: .red)
    }
}
