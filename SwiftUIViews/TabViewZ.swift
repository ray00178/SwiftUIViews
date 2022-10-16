//
//  TabViewZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/16.
//

import SwiftUI

// MARK: - TabViewZ

struct TabViewZ: View {
  
  @State private var seletedTab: Int = 0
  
  var body: some View {
    TabView(selection: $seletedTab) {
      // First Screen
      VStack(spacing: 20) {
        Text("Tab One")
        Button("Switch to tab 2") {
          seletedTab = 1
        }
        .tint(.blue)
      }
      .tabItem {
        Image(systemName: "paperclip")
      }
      .tag(0)
      
      
      // Second Screen
      Text("Tab Two")
        .tabItem {
          Label("command", systemImage: "command")
        }
        .tag(1)
    }
    .font(.title)
    .accentColor(.pink)
  }
}

// MARK: - TabViewZ_Previews

struct TabViewZ_Previews: PreviewProvider {
  static var previews: some View {
    TabViewZ()
  }
}
