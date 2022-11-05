//
//  TextViewZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/28.
//

import SwiftUI

// MARK: - TextViewZ

struct TextViewZ: View {
  var body: some View {
    VStack(spacing: 20.0) {
      Text("「Allows Tightening can be helpful when you see the last word getting truncated. Applying it may not even fully work depending on just how much space can be tightened. With the default font, I notice I can get a couple of characters worth of space to tighten up」")
        .font(.body)
        .foregroundColor(.blue)
        .allowsTightening(true)
        .lineLimit(3)
      
      Text("「Allows Tightening can be helpful when you see the last word getting truncated. Applying it may not even fully work depending on just how much space can be tightened. With the default font, I notice I can get a couple of characters worth of space to tighten up」")
        .font(.body)
        .foregroundColor(.gray)
        .allowsTightening(false)
        .multilineTextAlignment(.trailing)
        .truncationMode(.middle)
        .lineLimit(3)
      
      Group {
        Text("You can ") +
        Text("format").bold().foregroundColor(.blue).underline() +
        Text("「different parts of your text by using the plus (+) symbol.」")
      }
        
    }
    .padding()
    
  }
}

// MARK: - TextViewZ_Previews

struct TextViewZ_Previews: PreviewProvider {
  static var previews: some View {
    TextViewZ()
  }
}
