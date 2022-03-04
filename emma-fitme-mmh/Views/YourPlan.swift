//
//  YourPlan.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct YourPlan: View {
    @State private var selectedColorIndex = 0 // <1>
    @State private var selectedColor = FavoriteColor.red // <1>
    private var colors = ["Red", "Green", "Blue"]
//    @State var comments = [Comments]()
//
    
    var body: some View {
        Text("jhgfj")

//
//        VStack {
//            Picker("Favorite Color", selection: $selectedColor, content: {
//                                ForEach(FavoriteColor.allCases, content: { color in
//                                    Text(color.rawValue.capitalized)
//                                })
//            })
//
//                        Text("Selected color: \(selectedColor.rawValue.capitalized)")
//        }
         
        
//        List(comments) { comment in
//            VStack(alignment: .leading) {
//                Text(comment.name)
//                    .font(.title)
//                    .fontWeight(.bold)
//                Text(comment.email)
//                    .font(.subheadline)
//                    .fontWeight(.bold)
//                Text(comment.body)
//                    .font(.body)
//            }
//
//        }
//        //2.
//        .onAppear() {
//            apiCall().getUserComments { (comments) in
//                self.comments = comments
//            }
//        }.navigationTitle("Comments")
    }
}

struct YourPlan_Previews: PreviewProvider {
    static var previews: some View {
        YourPlan()
    }
}
