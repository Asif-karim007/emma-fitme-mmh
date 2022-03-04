//
//  ProfileHeader.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/22/22.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        
        VStack(alignment: .leading){
            VStack(spacing: 7.0) {
                Text("PERSONAL DATA")
                    .font(.title2)
                    .fontWeight(.light)
//                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
                
            Text("Fill your personal data if you want to get recommendations and worksouts based on your body parameters and fitness level")
                .font(.footnote)
//                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            }
            .padding(.vertical)
        }
//        .background(.gray)
        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: .infinity)
        
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
