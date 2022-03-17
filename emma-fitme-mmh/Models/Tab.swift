//
//  Tab.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 2/14/22.
//

import Foundation
import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "Programs", icon: "square.grid.2x2.fill",tab: .Programs,color:.teal),
    TabItem(text: "Your Plan", icon: "square.fill.text.grid.1x2",tab: .YourPlan,color:.cyan),
    TabItem(text: "Exercise", icon: "stopwatch.fill",tab: .Exercise,color:.indigo),
    TabItem(text: "Profile", icon: "person.crop.circle",tab: .Profile,color:.purple)
]

enum Tab: String {
    case Programs
    case YourPlan
    case Exercise
    case Profile
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}




struct ExercisebItem: Identifiable {
    var id = UUID()
    var text: String
    var image: String
   
}

var exerciseItems = [
    ExercisebItem(text: "Chest strech", image: "Background 1"),
    ExercisebItem(text: "Genie sit", image: "Background 2"),
    ExercisebItem(text: "Advanced Burpee", image: "Background 3"),
    ExercisebItem(text: "Pile Jump Squats", image: "Background 4"),
    ExercisebItem(text: "Squats", image: "Background 5"),
    ExercisebItem(text: "blah blah 1", image: "Background 7"),
    ExercisebItem(text: "blah blah 2", image: "Background 8"),
    ExercisebItem(text: "blah blah 3", image: "Background 9"),
    ExercisebItem(text: "blah blah 4", image: "Background 10")
   
]

//programs

struct ProgrambItem: Identifiable {
    var id = UUID()
    var details: String
    var image: String
    var title: String
   
}

var programItems = [
    ProgrambItem(details: "Start your 30-day fitness journey and become a better version of yourself!", image: "Background 1",title: "30-DAY FITNESS BODY"),
    ProgrambItem(details: "Start your 30-day fitness journey and become a better version of yourself!", image: "Background 2",title: "30-DAY FITNESS BODY"),
    ProgrambItem(details: "Start your 30-day fitness journey and become a better version of yourself!", image: "Background 3",title: "30-DAY FITNESS BODY"),
]



enum FavoriteColor: String, CaseIterable, Identifiable { // <1>
    case red
    case green
    case blue
    
    var id: FavoriteColor { self }
}


enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

enum gender: String, CaseIterable, Identifiable {
    case male
    case female
   

    var id: String { self.rawValue }
}




//API

//struct Comments: Codable, Identifiable {
//    var postId: Int
//    var id = UUID()
//    let name: String
//    let email: String
//    let body: String
//    
//
//}
//
//class apiCall {
//    func getUserComments(completion:@escaping ([Comments]) ->Void) {
//        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!
//        let task = URLSession.shared.dataTask(with: url) { (data, _, _) -> Void in
//            guard let data = data else {
//                DispatchQueue.main.async {
//                    completion(nil)
//                }
//                return
//            }
//            let wrapper = try? JSONDecoder().decode(Wrapper.self, from: data)
//        }
//
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let comments = try! JSONDecoder().decode([Comments].self, from: data!)
//            print(comments)
//
//            DispatchQueue.main.async {
//                completion(comments)
//            }
//        }
//        .resume()
//    }
//}

