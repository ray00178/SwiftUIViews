//
//  ToggleZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/11/5.
//

import SwiftUI

// MARK: - ToggleZ

struct ToggleZ: View {
  
  @State private var isOn: Bool = false
  
  var body: some View {
    VStack(spacing: 20.0) {
      Toggle(isOn: $isOn) {
        Label("Night", systemImage: "moon")
          .foregroundColor(.red)
      }
      .padding()
      .tint(.red)
      
      Toggle(isOn: $isOn) {
        Label("Night", systemImage: "moon")
          .foregroundColor(.orange)
      }
      .padding()
      .tint(.orange)
      .toggleStyle(.button)
    }
  }
}

// MARK: - ToggleZ_Previews

struct ToggleZ_Previews: PreviewProvider {
  static var previews: some View {
    ToggleZ()
  }
}
