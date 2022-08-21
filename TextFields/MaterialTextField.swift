//
//  MaterialTextField.swift
//  Caleb's Task Manager
//
//  Created by Caleb Hester on 7/28/22.
//

import SwiftUI

struct AnimatableCustomFontModifier: AnimatableModifier {
    
  var animatableData: CGFloat {
    get { size }
    set { size = newValue }
  }
  var size: CGFloat

  func body(content: Content) -> some View {
    content
      .font(Font(CTFont(("Google Sans-Regular") as CFString, size: size)))
  }

}

extension View {
  func animatableFont(size: CGFloat) -> some View {
    modifier(AnimatableCustomFontModifier(size: size))
  }
}

struct MaterialTextField: View {
    @Binding var text: String
    var placeholder: String = ""
    var secure: Bool = false
    
    @FocusState private var isFocused: Bool
    private var isEditing: Bool {
        return isFocused || !text.isEmpty
    }
    @State private var placeholderLeadingPadding: CGFloat = 10
    @State private var placeholderBottomPadding: CGFloat = 0
    
    private var typescale: MaterialTheme.MaterialTypescale {
        return MaterialTheme.Typescale.labelLarge
    }

    var body: some View {
        ZStack {
            if secure {
                SecureField("", text: $text)
                    .focused($isFocused)
                    .onChange(of: isFocused) { isFocused in
                        //isEditing = isFocused || !text.isEmpty
                    }
                    .padding(.leading, 9)
                    .padding(6)
                    .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 56, idealHeight: 56, maxHeight: 56, alignment: .center)
                    .fixedSize(horizontal: false, vertical: true)
                    .background(
                        RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.extraSmall)
                            .stroke(isFocused ? MaterialTheme.Colors.primary : MaterialTheme.Colors.outline, lineWidth: isFocused ? 2.0 : 1.0)
                    )
            } else {
                TextField("", text: $text)
                    .focused($isFocused)
                    .onChange(of: isFocused) { isFocused in
                        //isEditing = isFocused || !text.isEmpty
                    }
                    .padding(.leading, 9)
                    .padding(6)
                    .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 56, idealHeight: 56, maxHeight: 56, alignment: .center)
                    .fixedSize(horizontal: false, vertical: true)
                    .background(
                        RoundedRectangle(cornerRadius: MaterialTheme.Shape.CornerStyle.extraSmall)
                            .stroke(isFocused ? MaterialTheme.Colors.primary : MaterialTheme.Colors.outline, lineWidth: isFocused ? 2.0 : 1.0)
                    )
            }
                
            HStack {
                ZStack {
                    Text(placeholder)
                        .animatableFont(size: isEditing ? 18 : 20)
                        .foregroundColor(isFocused ? MaterialTheme.Colors.primary : MaterialTheme.Colors.onSurfaceVariant)
                        .padding(3)
                        .background(.white)
                }.padding(.leading, isEditing ? 17 : 15).padding(.bottom, isEditing ? 54 : 0)
                Spacer()
            }.fixedSize(horizontal: false, vertical: false)
                .allowsHitTesting(false)
        }
        .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 56, idealHeight: 56, maxHeight: 56, alignment: .center)
        .fixedSize(horizontal: false, vertical: true)
        .animation(.easeInOut(duration: 0.1), value: isFocused)
        
    }
}

struct TestView: View {
    @State private var text: String = "Test"
    
    var body: some View {
        MaterialTextField(text: $text, placeholder: "Email").padding()
    }
}

struct MaterialTextField_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
