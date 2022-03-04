//
//  TabBar.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab: Tab = .Programs
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                if selectedTab == .Programs {
                    Programs()
                } else if selectedTab == .YourPlan {
                    YourPlan()
                } else if selectedTab == .Exercise {
                    Exercise()
                } else if selectedTab == .Profile {
                    Profiles()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                   ForEach(tabItems) { item in
                       Button {
                           selectedTab = item.tab
                       } label: {
                           VStack(spacing: 2.0) {
                               Image(systemName: item.icon)
                                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                   .symbolVariant(.fill)
                                   .frame(width: 80, height: 30.0)
                                   .font(.body.bold())
                               Text(item.text)
                                   .font(.title3)
                                   .lineLimit(1)
                           }
                           .frame(maxWidth: .infinity)
                       }
                       .foregroundStyle(selectedTab == item.tab ? .green : .secondary)
                      
                   }
                   .padding([.top, .leading, .trailing], 8.0)
                
            }
            .background(.ultraThinMaterial)
        }
//        .navigationBarHidden(true)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
.previewInterfaceOrientation(.portrait)
    }
}

