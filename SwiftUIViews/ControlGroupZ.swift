//
//  ControlGroupZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/20.
//

import SwiftUI

// MARK: - ControlGroupZ

struct ControlGroupZ: View {
  var body: some View {
    VStack(spacing: 20) {
      Text("Control Group automatic")
        .font(.headline)
        .fontWeight(.medium)
        .foregroundColor(.yellow)
      
      ControlGroup {
        Button("Hello", action: {})
        Button(action: {}) {
          Image(systemName: "gearshape.fill")
        }
      }
      .controlGroupStyle(.automatic)
      
      Text("Control Group navigation")
        .font(.headline)
        .fontWeight(.medium)
        .foregroundColor(.yellow)
      
      ControlGroup {
        Button("Hello", action: {})
        Button(action: {}) {
          Image(systemName: "gearshape.fill")
        }
      }
      .controlGroupStyle(.navigation)
    }
    .padding(.horizontal, 20.0)
    
  }
}

// MARK: - ControlGroupZ_Previews

struct ControlGroupZ_Previews: PreviewProvider {
  static var previews: some View {
    ControlGroupZ()
  }
}
