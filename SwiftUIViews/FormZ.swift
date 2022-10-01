//
//  FormZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/24.
//

import SwiftUI

// MARK: - FormZ

struct FormZ: View {
  var body: some View {
    Form {
      Section("Basic") {
        Text("Row 0")
          .font(.title3)
        
        Text("Row 1")
        
        Text("Row 2")
          .foregroundColor(.white)
          .listRowBackground(Color.green)
          .listRowInsets(EdgeInsets(top: 0.0, leading: 40.0, bottom: 0.0, trailing: 0.0))
      }
      
      Section {
        Text("Section")
          .font(.title3)
        Color.purple
          .frame(height: 16.0)
      } header: {
        Image(systemName: "pencil.slash")
      }
      .headerProminence(.increased)
    }
  }
}

// MARK: - FormZ_Previews

struct FormZ_Previews: PreviewProvider {
  static var previews: some View {
    FormZ()
  }
}
