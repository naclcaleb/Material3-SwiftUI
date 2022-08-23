//
//  MaterialTheme.swift
//  Material3-SwiftUI
//
//  Created by Caleb Hester on 8/22/22.
//

import Foundation
import SwiftUI

class MaterialTheme: ObservableObject {
    
    struct MaterialTypescale {
        var fontFamilyName: String
        var fontFamilyStyle: String
        var fontWeight: String
        var fontSize: String
        var letterSpacing: String
        var lineHeight: String
    }
        
        
    struct Colors {
        static var primary: Color = Color("primary")
        static var onPrimary: Color = Color("onPrimary")
        static var primaryContainer: Color = Color("primaryContainer")
        static var onPrimaryContainer: Color = Color("onPrimaryContainer")
        static var secondary: Color = Color("secondary")
        static var onSecondary: Color = Color("onSecondary")
        static var secondaryContainer: Color = Color("secondaryContainer")
        static var onSecondaryContainer: Color = Color("onSecondaryContainer")
        static var tertiary: Color = Color("tertiary")
        static var onTertiary: Color = Color("onTertiary")
        static var tertiaryContainer: Color = Color("tertiaryContainer")
        static var onTertiaryContainer: Color = Color("onTertiaryContainer")
        static var error: Color = Color("error")
        static var errorContainer: Color = Color("errorContainer")
        static var onError: Color = Color("onError")
        static var onErrorContainer: Color = Color("onErrorContainer")
        static var background: Color = Color("background")
        static var onBackground: Color = Color("onBackground")
        static var surface: Color = Color("surface")
        static var onSurface: Color = Color("onSurface")
        static var surfaceVariant: Color = Color("surfaceVariant")
        static var onSurfaceVariant: Color = Color("onSurfaceVariant")
        static var outline: Color = Color("outline")
        static var inverseOnSurface: Color = Color("inverseOnSurface")
        static var inverseSurface: Color = Color("inverseSurface")
        static var inversePrimary: Color = Color("inversePrimary")
        static var shadow: Color = Color("shadow")
        static var surfaceTint: Color = Color("surfaceTint")
        static var surfaceTintColor: Color = Color("surfaceTintColor")
    }
    
    
    struct Typescale {
        static var labelSmall: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Medium",
            fontWeight: "500px",
            fontSize: "11px",
            letterSpacing: "0.1px",
            lineHeight: "16px"
        )
        static var labelMedium: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Medium",
            fontWeight: "500px",
            fontSize: "18px",
            letterSpacing: "0.1px",
            lineHeight: "16px"
        )
        static var labelLarge: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Medium",
            fontWeight: "500px",
            fontSize: "20px",
            letterSpacing: "0px",
            lineHeight: "20px"
        )
        static var bodySmall: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "12px",
            letterSpacing: "0.1px",
            lineHeight: "16px"
        )
        static var bodyMedium: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "14px",
            letterSpacing: "0px",
            lineHeight: "20px"
        )
        static var bodyLarge: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "16px",
            letterSpacing: "0px",
            lineHeight: "24px"
        )
        static var headlineSmall: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "24px",
            letterSpacing: "0px",
            lineHeight: "32px"
        )
        static var headlineMedium: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "28px",
            letterSpacing: "0px",
            lineHeight: "36px"
        )
        static var headlineLarge: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "32px",
            letterSpacing: "0px",
            lineHeight: "40px"
        )
        static var displaySmall: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "36px",
            letterSpacing: "0px",
            lineHeight: "44px"
        )
        static var displayMedium: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "45px",
            letterSpacing: "0px",
            lineHeight: "52px"
        )
        static var displayLarge: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "57px",
            letterSpacing: "0px",
            lineHeight: "64px"
        )
        static var titleSmall: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Medium",
            fontWeight: "500px",
            fontSize: "14px",
            letterSpacing: "0px",
            lineHeight: "20px"
        )
        static var titleMedium: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans Text",
            fontFamilyStyle: "Medium",
            fontWeight: "500px",
            fontSize: "16px",
            letterSpacing: "0px",
            lineHeight: "24px"
        )
        static var titleLarge: MaterialTypescale = MaterialTypescale(
            fontFamilyName: "Google Sans",
            fontFamilyStyle: "Regular",
            fontWeight: "400px",
            fontSize: "22px",
            letterSpacing: "0px",
            lineHeight: "28px"
        )
    }
    

    class Shape {
        struct CornerStyle {
            static var extraSmall: CGFloat = 4
            static var small: CGFloat = 8
            static var medium: CGFloat = 12
            static var large: CGFloat = 16
            static var extraLarge: CGFloat = 30
        }
    }
    
    /* Add any new icons here */
    enum Icon: String {
        case closeIcon = "CloseIcon"
        case accountIcon = "AccountIcon"
        case addIcon = "AddIcon"
    }
}


/* For using material type scales in SwiftUI */
/* Text("Test").font( Font(materialTypescale: MaterialTheme.Typescale.titleLarge) ) */
extension Font {
    init(materialTypescale: MaterialTheme.MaterialTypescale) {
        let fontSizeNumStr = String(materialTypescale.fontSize.dropLast().dropLast())
        let fontSize = CGFloat((fontSizeNumStr as NSString).floatValue)
        self.init(CTFont((materialTypescale.fontFamilyName + "-" + materialTypescale.fontFamilyStyle) as CFString, size: fontSize))
        
    }
}




