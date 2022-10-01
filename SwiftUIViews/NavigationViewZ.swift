//
//  NavigationViewZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/24.
//

import SwiftUI

// MARK: - NavigationViewZ

struct NavigationViewZ: View {
  var body: some View {
    NavigationView {
      ZStack(alignment: .top) {
        LinearGradient(
          colors: [.green, .white, .yellow],
          startPoint: .top,
          endPoint: .bottom
        )
        .ignoresSafeArea()

        VStack(spacing: 20) {
          Image(systemName: "applelogo")
            .font(.largeTitle)
            .foregroundColor(.gray)
            .padding(.vertical)

          Text("Hello world")
            .font(.title3)

          NavigationLink("Detail") {
            DetailView()
          }
          .foregroundColor(.red)
        }
      }
      .navigationTitle("Navigation Views")
      // .navigationBarTitleDisplayMode(.inline)
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button(action: {}) {
            Image(systemName: "bell.fill")
              .padding(.horizontal)
          }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {}) {
            Image(systemName: "trash.fill")
              .padding(.horizontal)
          }
        }
      }
      .tint(.white)
    }
  }
}

// MARK: - NavigationViewZ_Previews

struct NavigationViewZ_Previews: PreviewProvider {
  static var previews: some View {
    NavigationViewZ()
  }
}

// MARK: - DetailView

struct DetailView: View {
  @Environment(\.dismiss) var dismiss
  @Environment(\.presentationMode) var presentationMode
  
  @State private var pop = false
  
  var body: some View {
    Text("Detail View")
      .onTapGesture {
        pop.toggle()
      }
//      .sheet(isPresented: $pop, content: {
//
//      })
      .fullScreenCover(isPresented: $pop, content: {
        VStack {
          Text("PresnetView")
            .onTapGesture {
              pop.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        
      })
      .toolbar(content: {
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            presentationMode.wrappedValue.dismiss()
          } label: {
            Image(systemName: "arrow.backward.circle")
          }
        }
      })
      .navigationBarBackButtonHidden(true)
  }
}
