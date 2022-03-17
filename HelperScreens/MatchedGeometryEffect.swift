//
//  MatchedGeometryEffect.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 3/11/22.
//

import SwiftUI

struct MatchedGeometryEffect: View {
    @State var show = false
    @Namespace var namespace
//    
//    var body: some View {
//        VStack {
//               if !show {
//                   ScrollView {
//                       HStack {
//                           VStack {
//                               Text("Title").foregroundColor(.white)
//                                   .matchedGeometryEffect(id: "title", in: namespace)
//                           }
//                           .frame(width: 100, height: 100)
//                           .background(
//                               Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
//                           )
//                           VStack {
//                               Text("Pictures").foregroundColor(.white)
//                                   .matchedGeometryEffect(id: "pic", in: namespace)
//                           }.frame(width: 100, height: 100)
//                               .background( Rectangle().matchedGeometryEffect(id: "shape", in: namespace))
//                               
//                           Spacer()
//                       }
//                       .padding(8)
//                   }
//               } else {
//                   VStack {
//                       Text("Title").foregroundColor(.white)
//                           .matchedGeometryEffect(id: "title", in: namespace)
//                           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//                           .padding()
//                   }
//                   .frame(maxWidth: .infinity, maxHeight: 400)
//                   .background(
//                       Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
//                   )
//               }
//           }
//           .onTapGesture {
//               withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
//                   show.toggle()
//               }
//           }
//    }
    
    
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 44)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                        Text("Fever")
                            .matchedGeometryEffect(id: "text", in: namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .font(.title)
                            .matchedGeometryEffect(id: "play", in: namespace)
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .matchedGeometryEffect(id: "forward", in: namespace)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
            } else {
                PlayView(namespace: namespace)
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                show.toggle()
            }
        }    }
}

struct MatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffect()
    }
}
