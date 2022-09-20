//
//  ButtonZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/20.
//

import SwiftUI

// MARK: - ButtonZ

struct ButtonZ: View {
  
  @State private var isPressed: Bool = false
  
  var body: some View {
    VStack(spacing: 20.0) {
      Button(action: {
        withAnimation(.spring()) {
          isPressed.toggle()
        }
      }) {
        Text(isPressed ? "Press" : "Not Press")
          .font(.callout)
          .fontWeight(.bold)
          .foregroundColor(isPressed ? .purple : .red)
          .padding(12.0)
          .background(isPressed ? .black : .gray)
          .cornerRadius(4.0)
      }
      
      Divider()
      
      Button(action: {}) {
        Image(systemName: "square.and.arrow.up")
        Text("Share")
      }
      .foregroundColor(.orange)
      .font(.headline)
      .fontWeight(.medium)
      .padding(12.0)
      .background(.black.opacity(0.75))
      .cornerRadius(8.0)
      .controlSize(.large)
      
    }
  }
}

// MARK: - ButtonZ_Previews

struct ButtonZ_Previews: PreviewProvider {
  static var previews: some View {
    ButtonZ()
  }
}
