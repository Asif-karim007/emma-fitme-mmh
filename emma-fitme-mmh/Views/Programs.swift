//
//  Programs.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct Programs: View {
    var body: some View {
        NavigationLink {
            YourPlan()
        } label: {
            ScrollView(showsIndicators: false)  {
                ForEach(programItems) { item in
                    VStack {
                        ZStack {
                           

                            Image(item.image)
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(20.0)
                            
                            VStack(alignment: .center) {
                                
                                Text(item.title)
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                
                                Text(item.details)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                            }
                            .padding(.horizontal)
                        }.shadow(radius: 1)
                        
                    }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .padding(.all)
            .navigationBarHidden(true)
        }

    }
}

struct Programs_Previews: PreviewProvider {
    static var previews: some View {
        Programs()
    }
}
