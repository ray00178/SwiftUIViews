//
//  TextFieldZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/31.
//

import SwiftUI

// MARK: - TextFieldZ

struct TextFieldZ: View {
  
  @State private var name: String = ""
  @State private var isEditing: Bool = false
  
  var body: some View {
    VStack(spacing: 20.0) {
      TextField("RoundedBorder", text: $name)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.namePhonePad)
        .multilineTextAlignment(.leading)
        .font(.system(size: 20.0, design: .monospaced))
      
      TextField("Norma", text: $name)
        .padding(12)
        .background(
          RoundedRectangle(cornerRadius: 8.0, style: .circular)
            .foregroundColor(.orange)
            .opacity(0.5)
        )
        .font(.system(size: 18.0))
      
      HStack {
        TextField("Ray", text: $name) { isEditing in
          self.isEditing = isEditing
        }
        .keyboardType(.default)
        // Only for keyboardType = .default
        .autocorrectionDisabled(false)
        
        Button {
          
        } label: {
          Image(systemName: "chevron.right")
            .foregroundColor(.orange)
        }
      }
      .padding()
      .overlay(Capsule().stroke(isEditing ? Color.orange : Color.gray, lineWidth: 1.0))
      
      Spacer()
    }
    .padding()
  }
}

// MARK: - TextFieldZ_Previews

struct TextFieldZ_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldZ()
  }
}
