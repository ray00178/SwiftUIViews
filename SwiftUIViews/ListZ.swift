//
//  ListZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/24.
//

import SwiftUI

// MARK: - ListZ

struct ListZ: View {
  
  @State private var data = ["1", "2", "3", "4", "5", "6", "7", "8"]
  
  var body: some View {
    NavigationView {
      List {
        ForEach(data, id: \.self) { value in
          Text(value)
            .font(.system(size: 18.0))
            .padding()
        }
        .onMove { source, destination in
          data.move(fromOffsets: source, toOffset: destination)
        }
        .onDelete { offsets in
          data.remove(atOffsets: offsets)
        }
      }
      .navigationTitle("TO DO")
      .toolbar {
        ToolbarItem {
          EditButton()
        }
      }
    }
    .tint(.yellow)
  }
}

// MARK: - ListZ_Previews

struct ListZ_Previews: PreviewProvider {
  static var previews: some View {
    ListZ()
  }
}
