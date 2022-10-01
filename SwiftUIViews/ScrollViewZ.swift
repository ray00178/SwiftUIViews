//
//  ScrollViewZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/1.
//

import SwiftUI

// MARK: - ScrollViewZ

struct ScrollViewZ: View {
  @State private var names: [String] = ["Ray", "Aida", "Lin", "Jack", "Cho"]

  var body: some View {
    NavigationView {
      ScrollView {
        ForEach($names, id: \.self) { name in
          HStack(spacing: 12.0) {
            Image(systemName: "person")
              .padding(.horizontal, 8.0)
            Text("\(name.wrappedValue)")
            Spacer()
            Image(systemName: "arrow.right")
              .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 12.0))
          }
          .font(.title)
          .frame(height: 66.0)
          .background(Color.white)
          .cornerRadius(8.0)
          .padding(8.0)
        }
      }
      .frame(maxWidth: .infinity)
      .background(Color.orange)
      .navigationTitle("Scroll View")
      .navigationBarTitleDisplayMode(.large)
      // Reference: https://sarunw.com/posts/swiftui-navigation-bar-color/
      .toolbarBackground(Color.orange, for: .navigationBar)
    }
  }
}

// MARK: - ScrollViewZ_Previews

struct ScrollViewZ_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewZ()
  }
}
