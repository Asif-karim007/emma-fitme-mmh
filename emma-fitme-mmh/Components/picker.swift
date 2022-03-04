//
//  picker.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/28/22.
//

import SwiftUI

struct picker: View {
    @State private var Gender = gender.male
    @State private var number: Float = 0
    @State private var score:Float = 0
    @State private var enteredNumber = ""
    @State private var checkAmount:String = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2


       var enteredNumberFormatted: Double {
           return (Double(enteredNumber) ?? 0) / 100
       }
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    enum gender: String, CaseIterable, Identifiable {
        case male
        case female
       

        var id: String { self.rawValue }
    }
    
    
    
    
    
    
    
    let tipPercentages = [10, 15, 20, 25, 0]


    

    var body: some View {
//                Picker("Your age", selection: $number) {
//                    ForEach(floatNumbers, id: \.self) { number in
//                        Text("\(number)")
//                    }
//                }
//        NavigationView {
//            ZStack(alignment: .leading) {
//                                TextField("", text: $enteredNumber)
//                                    .keyboardType(.numberPad).foregroundColor(.clear)
//                                    .textFieldStyle(PlainTextFieldStyle())
//                                    .disableAutocorrection(true)
//                                    .accentColor(.clear)
//                                Text("\(enteredNumberFormatted, specifier: "%.1f")")
//            }
//        }

//        VStack {
//            TextField("Enter your score", value: $score, formatter: formatter)
//                           .padding()
//                           .keyboardType(.decimalPad)
//            Text("\(score, specifier:"%.1f")")
//                }
//    }
        
        NavigationView {
        Form {
            HStack {
                Text("Heifgt")
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                }
//                Section {
//                    Text("$\(checkAmount)")
//                }
            }

            Picker("Number of people", selection: $numberOfPeople) {
                ForEach(2 ..< 100) {
                    Text("\($0) people")
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
            }

           
        }
        .navigationBarTitle("WeSplit")

        }
    }}

struct picker_Previews: PreviewProvider {
    static var previews: some View {
        picker()
    }
}
