//
//  exercise-list.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/18/22.
//

import SwiftUI

struct exercise_list: View {
    var body: some View {
        
        ForEach(exerciseItems) { item in
            HStack {
                    HStack {
                        Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90.0)
                                    
                        Text(item.text)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                    HStack{
                        Text("Start")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                            .frame(width: 60.0, height: 30.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/21.0/*@END_MENU_TOKEN@*/)
                    }
            }
        }
    }
}

struct exercise_list_Previews: PreviewProvider {
    static var previews: some View {
        exercise_list()
    }
}



