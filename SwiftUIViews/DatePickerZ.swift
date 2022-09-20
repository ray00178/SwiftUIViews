//
//  DatePickerZ.swift
//  SwiftUIViews
//
//  Created by Ray on 2022/9/20.
//

import SwiftUI

// MARK: - DatePickerZ

struct DatePickerZ: View {
  
  @State private var date = Date()
  
  var body: some View {
    VStack(spacing: 20) {
      
      Text("DatePicker")
        .fontWeight(.bold)
        .font(.system(size: 28.0))
        .foregroundColor(.gray)
      
      Divider()
        .background(.red)
      
      DatePicker("Choose Date", selection: $date, displayedComponents: .date)
        .labelsHidden()
        //.datePickerStyle(.wheel)
        .datePickerStyle(.graphical)
        //.accentColor(.green)
        .tint(Color.green)
        .background(
          RoundedRectangle(cornerRadius: 8, style: .continuous)
            .fill(.green)
            .opacity(0.2)
        )
    }
    .padding(.horizontal, 12.0)

  }
}

// MARK: - DatePickerZ_Previews

struct DatePickerZ_Previews: PreviewProvider {
  static var previews: some View {
    DatePickerZ()
  }
}
