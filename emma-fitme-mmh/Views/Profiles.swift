//
//  Profiles.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct Profiles: View {
    @State private var vibrateOnRing = true
    @State private var Gender = gender.male
    @State var selectedDate = Date()
    @State private var score:Float = 0
    @State private var checkHeight:String = ""
    @State private var checkWeight:String = ""
    @State private var selectedFlavor: Flavor = .chocolate
    
  
    
    var body: some View {
        VStack{
        ProfileHeader()
        Spacer()
        List {
            Section(){
                HStack {
                    Text("Subcriptions")
                    Spacer()
                    Image(systemName: "chevron.forward")
                                               
                }
                HStack(spacing: 110) {
                    Text("Gender")
                    Picker("Programming language", selection: $Gender) {
                        ForEach(gender.allCases) { language in
                            Text(language.rawValue.capitalized)
                                .tag(language)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                   
                }
                  
                DatePicker("Date of birth", selection: $selectedDate,displayedComponents: .date)
                
                HStack(spacing:0) {
                    HStack(spacing:210) {
                        Text("Weight")
                    
                    Section {
                        TextField("LBS", text: $checkWeight)
                            .keyboardType(.decimalPad)
                        }
                    }
                    Image(systemName: "chevron.forward")
                }
                HStack(spacing:0) {
                    HStack(spacing:220) {
                        Text("Height")
                    Section {
                        TextField("CM", text: $checkHeight)
                            .keyboardType(.decimalPad)
                        }
                    }
                    Image(systemName: "chevron.forward")
                }
                HStack(spacing: 80)  {
                    Text("Fitness level")
                    Picker("Flavor", selection: $selectedFlavor) {
                           Text("Begginer").tag(Flavor.chocolate)
                           Text("Mild").tag(Flavor.vanilla)
                           Text("Pro").tag(Flavor.strawberry)
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
            
//Second section
            Section(header:Text("APP SETTINGS")){
                Toggle("Notification settings", isOn: $vibrateOnRing)
                
                HStack {
                    Text("Privacy policy")
                    Spacer()
                    Image(systemName: "chevron.forward")
                }

                HStack {
                    Text("Terms of service")
                    Spacer()
                    Image(systemName: "chevron.forward")
                }

            }
        }.listStyle(.inset)
        }.navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle.fill")
                                    .accentColor(.gray))
            .navigationTitle("Profile")
        
    }}








let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    return formatter
}()








struct Profiles_Previews: PreviewProvider {
    static var previews: some View {
        Profiles()
    }
}
