//
//  MaterialTheme.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/26/22.
//

import Foundation
import SwiftUI


class MaterialTheme {
    struct MaterialTypescale {
        var fontFamilyName: String
        var fontFamilyStyle: String
        var fontWeight: String
        var fontSize: String
        var letterSpacing: String
        var lineHeight: String
    }
    
    struct RefPalette {
        static var primary0: Color = Color(hex: "#000000")
        static var primary5: Color = Color(hex: "#00150f")
        static var primary10: Color = Color(hex: "#002019")
        static var primary15: Color = Color(hex: "#002c22")
        static var primary20: Color = Color(hex: "#00382c")
        static var primary25: Color = Color(hex: "#004437")
        static var primary30: Color = Color(hex: "#005141")
        static var primary35: Color = Color(hex: "#005e4c")
        static var primary40: Color = Color(hex: "#006b57")
        static var primary50: Color = Color(hex: "#00876f")
        static var primary60: Color = Color(hex: "#03a387")
        static var primary70: Color = Color(hex: "#3cbfa1")
        static var primary80: Color = Color(hex: "#5edbbb")
        static var primary90: Color = Color(hex: "#7cf8d7")
        static var primary95: Color = Color(hex: "#b8ffe8")
        static var primary98: Color = Color(hex: "#e6fff5")
        static var primary99: Color = Color(hex: "#f3fff9")
        static var primary100: Color = Color(hex: "#ffffff")
        static var secondary0: Color = Color(hex: "#000000")
        static var secondary5: Color = Color(hex: "#00150f")
        static var secondary10: Color = Color(hex: "#072019")
        static var secondary15: Color = Color(hex: "#122a23")
        static var secondary20: Color = Color(hex: "#1d352e")
        static var secondary25: Color = Color(hex: "#284039")
        static var secondary30: Color = Color(hex: "#344c44")
        static var secondary35: Color = Color(hex: "#3f574f")
        static var secondary40: Color = Color(hex: "#4b635b")
        static var secondary50: Color = Color(hex: "#637c74")
        static var secondary60: Color = Color(hex: "#7d968d")
        static var secondary70: Color = Color(hex: "#97b1a7")
        static var secondary80: Color = Color(hex: "#b2ccc2")
        static var secondary90: Color = Color(hex: "#cde9de")
        static var secondary95: Color = Color(hex: "#dbf7ec")
        static var secondary98: Color = Color(hex: "#e6fff5")
        static var secondary99: Color = Color(hex: "#f3fff9")
        static var secondary100: Color = Color(hex: "#ffffff")
        static var tertiary0: Color = Color(hex: "#000000")
        static var tertiary5: Color = Color(hex: "#00131e")
        static var tertiary10: Color = Color(hex: "#001e2d")
        static var tertiary15: Color = Color(hex: "#00293b")
        static var tertiary20: Color = Color(hex: "#0f3447")
        static var tertiary25: Color = Color(hex: "#1c3f52")
        static var tertiary30: Color = Color(hex: "#294a5e")
        static var tertiary35: Color = Color(hex: "#35566a")
        static var tertiary40: Color = Color(hex: "#416277")
        static var tertiary50: Color = Color(hex: "#5a7b90")
        static var tertiary60: Color = Color(hex: "#7495ab")
        static var tertiary70: Color = Color(hex: "#8eb0c6")
        static var tertiary80: Color = Color(hex: "#a9cbe3")
        static var tertiary90: Color = Color(hex: "#c5e7ff")
        static var tertiary95: Color = Color(hex: "#e4f3ff")
        static var tertiary98: Color = Color(hex: "#f5faff")
        static var tertiary99: Color = Color(hex: "#fbfcff")
        static var tertiary100: Color = Color(hex: "#ffffff")
        static var neutral0: Color = Color(hex: "#000000")
        static var neutral5: Color = Color(hex: "#0e1210")
        static var neutral10: Color = Color(hex: "#191c1b")
        static var neutral15: Color = Color(hex: "#232725")
        static var neutral20: Color = Color(hex: "#2e312f")
        static var neutral25: Color = Color(hex: "#393c3a")
        static var neutral30: Color = Color(hex: "#444846")
        static var neutral35: Color = Color(hex: "#505351")
        static var neutral40: Color = Color(hex: "#5c5f5d")
        static var neutral50: Color = Color(hex: "#747876")
        static var neutral60: Color = Color(hex: "#8e918f")
        static var neutral70: Color = Color(hex: "#a9aca9")
        static var neutral80: Color = Color(hex: "#c4c7c4")
        static var neutral90: Color = Color(hex: "#e1e3e0")
        static var neutral95: Color = Color(hex: "#eff1ee")
        static var neutral98: Color = Color(hex: "#f8faf7")
        static var neutral99: Color = Color(hex: "#fbfdfa")
        static var neutral100: Color = Color(hex: "#ffffff")
        static var neutralVariant0: Color = Color(hex: "#000000")
        static var neutralVariant5: Color = Color(hex: "#0a1310")
        static var neutralVariant10: Color = Color(hex: "#141d1a")
        static var neutralVariant15: Color = Color(hex: "#1f2824")
        static var neutralVariant20: Color = Color(hex: "#29322f")
        static var neutralVariant25: Color = Color(hex: "#343d3a")
        static var neutralVariant30: Color = Color(hex: "#3f4945")
        static var neutralVariant35: Color = Color(hex: "#4b5551")
        static var neutralVariant40: Color = Color(hex: "#57605c")
        static var neutralVariant50: Color = Color(hex: "#6f7975")
        static var neutralVariant60: Color = Color(hex: "#89938e")
        static var neutralVariant70: Color = Color(hex: "#a3ada9")
        static var neutralVariant80: Color = Color(hex: "#bfc9c4")
        static var neutralVariant90: Color = Color(hex: "#dbe5df")
        static var neutralVariant95: Color = Color(hex: "#e9f3ee")
        static var neutralVariant98: Color = Color(hex: "#f2fcf6")
        static var neutralVariant99: Color = Color(hex: "#f5fff9")
        static var neutralVariant100: Color = Color(hex: "#ffffff")
        static var error0: Color = Color(hex: "#000000")
        static var error5: Color = Color(hex: "#2d0001")
        static var error10: Color = Color(hex: "#410002")
        static var error15: Color = Color(hex: "#540003")
        static var error20: Color = Color(hex: "#690005")
        static var error25: Color = Color(hex: "#7e0007")
        static var error30: Color = Color(hex: "#93000a")
        static var error35: Color = Color(hex: "#a80710")
        static var error40: Color = Color(hex: "#ba1a1a")
        static var error50: Color = Color(hex: "#de3730")
        static var error60: Color = Color(hex: "#ff5449")
        static var error70: Color = Color(hex: "#ff897d")
        static var error80: Color = Color(hex: "#ffb4ab")
        static var error90: Color = Color(hex: "#ffdad6")
        static var error95: Color = Color(hex: "#ffedea")
        static var error98: Color = Color(hex: "#fff8f7")
        static var error99: Color = Color(hex: "#fffbff")
        static var error100: Color = Color(hex: "#ffffff")
    }
    
    
    struct Colors {
        static var primary: Color = Color(hex: "#44655b")
        static var onPrimary: Color = Color(hex: "#ffffff")
        static var primaryContainer: Color = Color(hex: "#c6eadd")
        static var onPrimaryContainer: Color = Color(hex: "#002019")
        static var secondary: Color = Color(hex: "#58605d")
        static var onSecondary: Color = Color(hex: "#ffffff")
        static var secondaryContainer: Color = Color(hex: "#dde4e0")
        static var onSecondaryContainer: Color = Color(hex: "#161d1b")
        static var tertiary: Color = Color(hex: "#566067")
        static var onTertiary: Color = Color(hex: "#ffffff")
        static var tertiaryContainer: Color = Color(hex: "#dae4ec")
        static var onTertiaryContainer: Color = Color(hex: "#131d23")
        static var error: Color = Color(hex: "#ba1a1a")
        static var onError: Color = Color(hex: "#ffffff")
        static var errorContainer: Color = Color(hex: "#ffdad6")
        static var onErrorContainer: Color = Color(hex: "#410002")
        static var background: Color = Color(hex: "#fefcfa")
        static var onBackground: Color = Color(hex: "#1b1c1b")
        static var surface: Color = Color(hex: "#fefcfa")
        static var onSurface: Color = Color(hex: "#1b1c1b")
        static var surfaceVariant: Color = Color(hex: "#e1e3e0")
        static var onSurfaceVariant: Color = Color(hex: "#454746")
        static var outline: Color = Color(hex: "#757876")
        static var shadow: Color = Color(hex: "#000000")
        static var inverseSurface: Color = Color(hex: "#303030")
        static var inverseOnSurface: Color = Color(hex: "#f2f0ef")
        static var inversePrimary: Color = Color(hex: "#aacec1")
        static var surfaceTint: Color = Color(hex: "#44655b")
        static var surfaceTintColor: Color = Color(hex: "#44655b")
        static var primaryLight: Color = Color(hex: "#44655b")
        static var onPrimaryLight: Color = Color(hex: "#ffffff")
        static var primaryContainerLight: Color = Color(hex: "#c6eadd")
        static var onPrimaryContainerLight: Color = Color(hex: "#002019")
        static var secondaryLight: Color = Color(hex: "#58605d")
        static var onSecondaryLight: Color = Color(hex: "#ffffff")
        static var secondaryContainerLight: Color = Color(hex: "#dde4e0")
        static var onSecondaryContainerLight: Color = Color(hex: "#161d1b")
        static var tertiaryLight: Color = Color(hex: "#566067")
        static var onTertiaryLight: Color = Color(hex: "#ffffff")
        static var tertiaryContainerLight: Color = Color(hex: "#dae4ec")
        static var onTertiaryContainerLight: Color = Color(hex: "#131d23")
        static var errorLight: Color = Color(hex: "#ba1a1a")
        static var onErrorLight: Color = Color(hex: "#ffffff")
        static var errorContainerLight: Color = Color(hex: "#ffdad6")
        static var onErrorContainerLight: Color = Color(hex: "#410002")
        static var backgroundLight: Color = Color(hex: "#fefcfa")
        static var onBackgroundLight: Color = Color(hex: "#1b1c1b")
        static var surfaceLight: Color = Color(hex: "#fefcfa")
        static var onSurfaceLight: Color = Color(hex: "#1b1c1b")
        static var surfaceVariantLight: Color = Color(hex: "#e1e3e0")
        static var onSurfaceVariantLight: Color = Color(hex: "#454746")
        static var outlineLight: Color = Color(hex: "#757876")
        static var shadowLight: Color = Color(hex: "#000000")
        static var inverseSurfaceLight: Color = Color(hex: "#303030")
        static var inverseOnSurfaceLight: Color = Color(hex: "#f2f0ef")
        static var inversePrimaryLight: Color = Color(hex: "#aacec1")
        static var surfaceTintLight: Color = Color(hex: "#44655b")
        static var surfaceTintColorLight: Color = Color(hex: "#44655b")
        static var primaryDark: Color = Color(hex: "#aacec1")
        static var onPrimaryDark: Color = Color(hex: "#15362d")
        static var primaryContainerDark: Color = Color(hex: "#2c4d43")
        static var onPrimaryContainerDark: Color = Color(hex: "#c6eadd")
        static var secondaryDark: Color = Color(hex: "#c1c8c4")
        static var onSecondaryDark: Color = Color(hex: "#2b322f")
        static var secondaryContainerDark: Color = Color(hex: "#414845")
        static var onSecondaryContainerDark: Color = Color(hex: "#dde4e0")
        static var tertiaryDark: Color = Color(hex: "#bec8d0")
        static var onTertiaryDark: Color = Color(hex: "#283238")
        static var tertiaryContainerDark: Color = Color(hex: "#3f484f")
        static var onTertiaryContainerDark: Color = Color(hex: "#dae4ec")
        static var errorDark: Color = Color(hex: "#ffb4ab")
        static var onErrorDark: Color = Color(hex: "#690005")
        static var errorContainerDark: Color = Color(hex: "#93000a")
        static var onErrorContainerDark: Color = Color(hex: "#ffb4ab")
        static var backgroundDark: Color = Color(hex: "#1b1c1b")
        static var onBackgroundDark: Color = Color(hex: "#e4e2e1")
        static var surfaceDark: Color = Color(hex: "#1b1c1b")
        static var onSurfaceDark: Color = Color(hex: "#e4e2e1")
        static var surfaceVariantDark: Color = Color(hex: "#454746")
        static var onSurfaceVariantDark: Color = Color(hex: "#c5c7c5")
        static var outlineDark: Color = Color(hex: "#8f918f")
        static var shadowDark: Color = Color(hex: "#000000")
        static var inverseSurfaceDark: Color = Color(hex: "#e4e2e1")
        static var inverseOnSurfaceDark: Color = Color(hex: "#303030")
        static var inversePrimaryDark: Color = Color(hex: "#44655b")
        static var surfaceTintDark: Color = Color(hex: "#aacec1")
        static var surfaceTintColorDark: Color = Color(hex: "#aacec1")
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
    
    
    enum Icon: String {
        case closeIcon = "CloseIcon"
        case accountIcon = "AccountIcon"
        case addIcon = "AddIcon"
    }
}


extension Font {
    init(materialTypescale: MaterialTheme.MaterialTypescale) {
        let fontSizeNumStr = String(materialTypescale.fontSize.dropLast().dropLast())
        let fontSize = CGFloat((fontSizeNumStr as NSString).floatValue)
        self.init(CTFont((materialTypescale.fontFamilyName + "-" + materialTypescale.fontFamilyStyle) as CFString, size: fontSize))
        
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
