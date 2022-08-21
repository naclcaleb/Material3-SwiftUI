//
//  MaterialCard.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/4/22.
//

import SwiftUI

struct MaterialCard<Content>: View where Content: View {
    var style: Style = .elevated
    var disabled: Bool = false
    
    var content: () -> Content
    
    enum Style {
        case elevated
        case filled
        case outlined
    }
    
    var body: some View {
        switch style {
        case .elevated:
            MaterialElevatedCard(content: content, disabled: disabled)
        case .filled:
            MaterialFilledCard(content: content, disabled: disabled)
        case .outlined:
            MaterialOutlinedCard(content: content, disabled: disabled)
        }
    }
}

struct MaterialCard_Previews: PreviewProvider {
    
    static var content: some View {
        Text("Test Card").padding(20)
    }
    
    static var previews: some View {
        VStack {
            MaterialCard(style: .elevated) {
                content
            }
            MaterialCard(style: .filled) {
                content
            }
            MaterialCard(style: .outlined) {
                content
            }
        }
    }
}
