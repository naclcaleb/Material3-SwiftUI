//
//  MaterialBottomAppBar.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 8/21/22.
//

import SwiftUI

struct MaterialBottomAppBarButton: Identifiable {
    var id: String
    var icon: MaterialTheme.Icon
}

struct MaterialBottomAppBar<Content>: View where Content: View {
    var content: () -> Content
    var items: [MaterialBottomAppBarButton]
    var onItemTapped: (_ item: String) -> Void
    var fabIcon: MaterialTheme.Icon
    var fabAction: () -> Void
    
    var body: some View {
        VStack {
            content().frame(maxWidth: .infinity)
            Spacer()
            HStack {
                HStack {
                    ForEach(items) { item in
                        MaterialButton(icon: item.icon, style: .icon, size: .extraLarge, action: {
                            self.onItemTapped(item.id)
                        })
                    }
                }.padding(.leading, 15)
                
                    .font(Font(materialTypescale: MaterialTheme.Typescale.headlineSmall))
                Spacer()
                MaterialButton(icon: fabIcon, style: .flatFab, size: .small, action: fabAction)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                
            }
            .background(
                MaterialTheme.Colors.surface
                    .ignoresSafeArea()
                    //.shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.2), radius: 1, x: 0, y: -1)
            )
            .ignoresSafeArea()
            
        }
    }
}

struct MaterialBottomAppBar_Previews: PreviewProvider {
    static var previews: some View {
        MaterialBottomAppBar(content: {
            VStack {
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
            }
        }, items: [
            MaterialBottomAppBarButton(id: "account", icon: .accountIcon),
            MaterialBottomAppBarButton(id: "close", icon: .closeIcon),
            MaterialBottomAppBarButton(id: "plus", icon: .addIcon)
        ], onItemTapped: { itemId in
            
        }, fabIcon: .addIcon, fabAction: {
            print("Hi")
        })
    }
}
