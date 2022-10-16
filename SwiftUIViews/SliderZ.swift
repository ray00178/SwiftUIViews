//
//  SliderZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/16.
//

import SwiftUI

// MARK: - SliderZ

struct SliderZ: View {
  
  @State private var value: CGFloat = 0.0
  
  var body: some View {
    VStack {
      Slider(value: $value, in: 0...100, step: 10) { isChanegd in
        print("Slider changes for \(isChanegd)")
      }
      .tint(Color.pink)
      
      Text("Slider value: ") + Text("\(value)").foregroundColor(.pink)
    }
    .padding(20)
    .font(.title)
  }
}

// MARK: - SliderZ_Previews

struct SliderZ_Previews: PreviewProvider {
  static var previews: some View {
    SliderZ()
  }
}
