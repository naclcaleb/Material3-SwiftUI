//
//  MaterialButton.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/26/22.
//

import SwiftUI

struct MaterialButton: View {
    var icon: MaterialTheme.Icon?
    var label: String = ""
    var style: Style = .filled
    var size: Size = .large
    var action: () -> Void = {}
    var fullWidth: Bool = false
    var loading: Bool = false
    
    enum Style {
        case elevated
        case filled
        case filledTonal
        case outlined
        case text
        case icon
        case fab
        case flatFab
        case extendedFab
    }
    
    enum Size {
        case small
        case large
        case extraLarge
    }
    
    private var loadingSymbolColor: Color {
        switch style {
        case .elevated:
            return MaterialTheme.Colors.primary
        case .filled :
            return MaterialTheme.Colors.onPrimary
        case .filledTonal:
            return MaterialTheme.Colors.onPrimaryContainer
        case .outlined:
            return MaterialTheme.Colors.primary
        case .extendedFab:
            return MaterialTheme.Colors.onPrimaryContainer
        case .icon:
            return MaterialTheme.Colors.onPrimary
        default:
            return MaterialTheme.Colors.onPrimary
        }
    }
    
    func content() -> some View {
        Group {
            HStack {
                
                if fullWidth { Spacer() }
                if loading {
                    ProgressView().progressViewStyle(CircularProgressViewStyle(tint: loadingSymbolColor))
                } else {
                    if let icon = icon {
                        Image(icon.rawValue)
                    }
                    Text(label)
                }
                if fullWidth { Spacer() }
                
            }
        }
    }
    
    var body: some View {
        VStack {
            switch style {
            case .elevated:
                MaterialElevatedButton(size: size, action: action) {
                    content()
                }
            case .filled:
                MaterialFilledButton(size: size, action: action) {
                    content()
                }
            case .filledTonal:
                MaterialFilledTonalButton(size: size, action: action) {
                    content()
                }
            case .outlined:
                MaterialOutlinedButton(size: size, action: action) {
                    content()
                }
            case .text:
                MaterialTextButton(size: size, action: action) {
                    content()
                }
            case .icon:
                MaterialIconButton(size: size, action: action) {
                    Image(icon!.rawValue)
                }
            case .fab:
                MaterialFABButton(icon: icon!.rawValue, size: size, action: action)
            case .flatFab:
                MaterialFlatFABButton(icon: icon!.rawValue, size: size, action: action)
            case .extendedFab:
                MaterialExtendedFABButton(size: size, action: action) {
                    content()
                }
            }
        }
    }
}

struct MaterialButton_Previews: PreviewProvider {
    static var previews: some View {
        let testLabel: String = "Button"
        let testIcon: MaterialTheme.Icon = .closeIcon
        
        VStack {
            HStack {
                MaterialButton(label: testLabel, style: .filled, size: .small)
                MaterialButton(label: testLabel, style: .filled, size: .large)
                MaterialButton(label: testLabel, style: .filled, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(label: testLabel, style: .filledTonal, size: .small)
                MaterialButton(label: testLabel, style: .filledTonal, size: .large, loading: true)
                MaterialButton(label: testLabel, style: .filledTonal, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(label: testLabel, style: .outlined, size: .small)
                MaterialButton(label: testLabel, style: .outlined, size: .large)
                MaterialButton(label: testLabel, style: .outlined, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(label: testLabel, style: .elevated, size: .small)
                MaterialButton(label: testLabel, style: .elevated, size: .large)
                MaterialButton(label: testLabel, style: .elevated, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(label: testLabel, style: .text, size: .small)
                MaterialButton(label: testLabel, style: .text, size: .large)
                MaterialButton(icon: testIcon, label: testLabel, style: .text, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(icon: testIcon, style: .icon, size: .small)
                MaterialButton(icon: testIcon, style: .icon, size: .large)
                MaterialButton(icon: testIcon, style: .icon, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(icon: testIcon, style: .fab, size: .small)
                MaterialButton(icon: testIcon, style: .fab, size: .large)
                MaterialButton(icon: testIcon, style: .fab, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(icon: testIcon, style: .flatFab, size: .small)
                MaterialButton(icon: testIcon, style: .flatFab, size: .large)
                MaterialButton(icon: testIcon, style: .flatFab, size: .extraLarge)
            }
            
            HStack {
                MaterialButton(label: testLabel, style: .extendedFab, size: .small)
                MaterialButton(label: testLabel, style: .extendedFab, size: .large)
                MaterialButton(label: testLabel, style: .extendedFab, size: .extraLarge)
            }
            
            MaterialButton(icon: testIcon, label: testLabel, fullWidth: true, loading: true).padding()
        }
    }
}
