//
//  SecureFieldZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/10/6.
//

import SwiftUI

// MARK: - SecureFieldZ

struct SecureFieldZ: View {
  
  @State private var username: String = ""
  @State private var password: String = ""
  
  var body: some View {
    
    // Reference = https://forums.swift.org/t/swiftui-question-how-to-know-when-a-user-is-editing-a-particular-securefield/40564
    let binding = Binding {
      password
    } set: { value, tranasction in
      password = value
      print("password = \(value)")
    }

    
    VStack {
      Spacer()
      TextField("UserName", text: $username)
        .frame(height: 44.0)
        .padding(8.0)
        .background(
          Capsule()
            .foregroundStyle(.orange)
        )
        .padding()
      SecureField("Password", text: binding)
        .frame(height: 44.0)
        .padding(8.0)
        .background(
          Capsule()
            .foregroundStyle(.orange)
        )
        .padding()
    }
  }
}

// MARK: - SecureFieldZ_Previews

struct SecureFieldZ_Previews: PreviewProvider {
  static var previews: some View {
    SecureFieldZ()
  }
}
