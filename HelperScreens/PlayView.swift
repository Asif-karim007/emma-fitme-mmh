//
//  PlayView.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 3/11/22.
//

import SwiftUI

struct PlayView: View {
    var namespace: Namespace.ID
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 300)
                .padding()
                .matchedGeometryEffect(id: "shape", in: namespace)
            Text("Fever")
                .matchedGeometryEffect(id: "text", in: namespace)
            HStack {
                Image(systemName: "play.fill")
                    .font(.title)
                    .matchedGeometryEffect(id: "play", in: namespace)
                Image(systemName: "forward.fill")
                    .font(.title)
                    .matchedGeometryEffect(id: "forward", in: namespace)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .ignoresSafeArea()
    }
}

struct PlayView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        PlayView(namespace: namespace)
    }
}
