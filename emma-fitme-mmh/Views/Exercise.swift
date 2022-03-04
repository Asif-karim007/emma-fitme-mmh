//
//  Exercise.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct Exercise: View {
    var body: some View {
        NavigationLink{
            Profiles()
        } label: {
            List{
                    exercise_list()
                .padding(.vertical,10)
            }
            .navigationTitle("Exercise")
            .navigationBarItems(trailing: Image(systemName: "stopwatch")
                                    .accentColor(.gray))
        }
    }
}

struct Exercise_Previews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}
