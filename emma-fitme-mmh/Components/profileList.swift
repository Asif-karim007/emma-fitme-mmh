//
//  profileList.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/22/22.
//

import SwiftUI

struct profileList: View {
    @State private var selectedFlavor: Flavor = .chocolate
    @State var selectedDate = Date()
    var body: some View {
        List {
            Picker("Flavor", selection: $selectedFlavor) {
                   ForEach(Flavor.allCases) { flavor in
                       Text(flavor.rawValue.capitalized)
                   }.pickerStyle(.wheel)
            }
            DatePicker(selection: $selectedDate) {
                Text("Select a date")
                    .font(.title3)
            }
            DatePicker("Date", selection: $selectedDate,displayedComponents: .date).datePickerStyle(.compact)
        }
    }
}

struct profileList_Previews: PreviewProvider {
    static var previews: some View {
        profileList()
    }
}
