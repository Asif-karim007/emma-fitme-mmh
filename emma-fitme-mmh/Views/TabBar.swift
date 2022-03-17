//
//  TabBar.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab: Tab = .Programs
    @State var color: Color = .teal
    @State var tabItemWidth: CGFloat = 0

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
                buttons
            }
            .background(.ultraThinMaterial)
            .background(
                background
            )
            .overlay(
                overlay
            )

        }
//        .navigationBarHidden(true)
    }
    
    
    
    var buttons: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                    selectedTab = item.tab
                    color = item.color
                }
            } label: {
                VStack(spacing: 0) {
                    Image(systemName: item.icon)
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 44, height: 29)
                        
                    Text(item.text)
                        .font(.caption2)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
            .blendMode(selectedTab == item.tab ? .overlay : .normal)
            
            .overlay(
             GeometryReader { proxy in
                 Color.clear.preference(key: TabPreferenceKey.self, value: proxy.size.width)
             }
            )
            .onPreferenceChange(TabPreferenceKey.self) { value in
                tabItemWidth = value
            }
            
        }
        .padding([.top, .leading, .trailing], 8.0)
    }
    
    
    var background: some View {
        HStack {
            if selectedTab == .Profile { Spacer() }
            if selectedTab == .YourPlan { Spacer() }
            if selectedTab == .Exercise {
                Spacer()
                Spacer()
            }
            Circle().fill(color).frame(width: tabItemWidth)
            if selectedTab == .Programs { Spacer() }
            if selectedTab == .YourPlan {
                Spacer()
                Spacer()
            }
            if selectedTab == .Exercise { Spacer() }
        }
        .padding(.horizontal, 8)
    }
    
    var overlay: some View{
        HStack {
            if selectedTab == .Profile { Spacer() }
            if selectedTab == .YourPlan { Spacer() }
            if selectedTab == .Exercise {
                Spacer()
                Spacer()
            }
            Rectangle()
                .fill(color)
                .frame(width: 38,height: 5)
                .cornerRadius(3)
                .frame(width:tabItemWidth)
                .frame(maxHeight:.infinity,alignment:.top)
            if selectedTab == .Programs { Spacer() }
            if selectedTab == .YourPlan {
                Spacer()
                Spacer()
            }
            if selectedTab == .Exercise { Spacer() }
        }
        .padding(.horizontal, 8)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

