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
          NavigationLink {
            HorizontalView(title: name.wrappedValue)
          } label: {
            HStack(spacing: 12.0) {
              Image(systemName: "person")
                .padding(.horizontal, 8.0)
              Text("\(name.wrappedValue)")
              Spacer()
              Image(systemName: "arrow.right")
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 12.0))
            }
            .font(.title)
            .tint(Color.black)
            .frame(height: 66.0)
            .background(Color.white)
            .cornerRadius(8.0)
            .padding(8.0)
          }
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

// MARK: - HorizontalView

struct HorizontalView: View {
  
  @Environment(\.dismiss) var dismiss
  
  @State private var colors: [Color] = [.red, .orange, .yellow, .green, .blue,
                                        .cyan, .purple]

  @State var title: String
  
  var body: some View {
    NavigationView {
      VStack(spacing: 0.0) {
        ScrollView(.horizontal, showsIndicators: true) {
          HStack(spacing: 16.0) {
            ForEach(colors, id: \.self) { color in
              Rectangle()
                .fill(color)
                .cornerRadius(8.0)
                .frame(width: 200.0, height: 150.0)
            }
          }
        }
        .padding()
        Spacer()
      }
    }
    .navigationTitle(title)
    .navigationBarTitleDisplayMode(.inline)
    .navigationBarBackButtonHidden(true)
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        Button {
          dismiss()
        } label: {
          Image(systemName: "arrow.backward")
            .tint(.white)
        }
      }
    }
    .toolbarBackground(Color.orange, for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
  }
}
