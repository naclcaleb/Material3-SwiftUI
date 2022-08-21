# Material3-SwiftUI
This repository was started as a personal project to write a usable library for creating iOS apps based on Google's Material 3 design system, as there was a lack of any such library previously.

The project is still in its early stages, but a number of components have been successfully completed. 

## Buttons
Material 3 supports several types of buttons for various use cases. All button types except for "Segmented" buttons have been implemented:

<img width="320" alt="Screen Shot 2022-08-21 at 11 32 16 AM" src="https://user-images.githubusercontent.com/42253012/185806610-6e608ebd-a5ed-4abd-93fb-3366122ad269.png">

All button styles are achieved using a single `MaterialButton` component:
```swift
MaterialButton(label: "My Button", style: .filledTonal, size: .large, loading: false) // (Other options include "icon: MaterialTheme.Icon" and "fullWidth: Bool" 
```

## App Bars
Material 3 supports several types of app bars; the only one implemented so far is the `MaterialBottomAppBar`:

<img width="464" alt="Screen Shot 2022-08-21 at 11 31 44 AM" src="https://user-images.githubusercontent.com/42253012/185806243-22a6f739-e389-4f61-ad27-2ae7866a40f5.png">

This component is used as a wrapper for the rest of a page; like so:
```swift
MaterialBottomAppBar(
        content: {
            
            /**
              Main App Content Goes Here
            **/
            
        }, items: [
            
            //List of icon button items
            MaterialBottomAppBarButton(id: "account", icon: .accountIcon),
            MaterialBottomAppBarButton(id: "close", icon: .closeIcon),
            MaterialBottomAppBarButton(id: "plus", icon: .addIcon)
            
        ], onItemTapped: { itemId in
            
            print(itemId)
            
        }, fabIcon: .addIcon, 
        
        fabAction: {
            print("Hi")
        }
)
```

## Cards
All 3 of the Material 3 card types have been implemented (elevated, filled, and outlined)

<img width="354" alt="Screen Shot 2022-08-21 at 11 42 17 AM" src="https://user-images.githubusercontent.com/42253012/185806380-0652fa03-a6cb-4bbe-a4ea-8836357655c9.png">

They are combined into a single higher-order component called `MaterialCard`:

```swift
MaterialCard(style: .elevated) {
  Text("Material Card").padding(20)
}
```

## Chips
Two types of Material 3 chips have been implemented: filled and outlined. 

<img width="359" alt="Screen Shot 2022-08-21 at 11 38 19 AM" src="https://user-images.githubusercontent.com/42253012/185806511-75ee805a-692c-4227-adc2-048c031615a1.png">

They are combined into a higher-order component called `MaterialChip`:

```swift
MaterialChip(label: "Material Chip", style: .filled, tintColor: MaterialTheme.Colors.primary)
```

## TextFields
Only the outlined style of material 3 text field has been implemented:

<img width="347" alt="Screen Shot 2022-08-21 at 11 34 50 AM" src="https://user-images.githubusercontent.com/42253012/185806548-d4f7c8f1-81c8-428c-b96e-b8d9e818c884.png">

Usage:
```swift
MaterialTextField(text: $text, placeholder: "Email")
```

## Theme
All colors, fonts, font sizes, corner radius size settings, icons, etc. are defined under the `MaterialTheme` class in `MaterialTheme.swift`. This can be generated based on a CSS theme exported from the [Material 3 Theme Builder](https://m3.material.io/theme-builder#/dynamic).
