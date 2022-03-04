//
//  calender.swift
//  emma-fitme-mmh
//
//  Created by Asif Karim on 3/3/22.
//

import SwiftUI

struct calender: View {
    @State var monthString: String = "Not Set"
    let calendar = Calendar.current
    var body: some View {
        
        let dates = getWeek()

        VStack {
            Text(getMonth(date: Date()))
            ScrollView(.horizontal) {
               HStack {
                    ForEach(dates, id: \.self) { day in
                            VStack {
                                Text(getDayShort(date: day))
                                    .font(.title3)
                                Text("\(getDayNumber(date: day))")
                                    .font(.largeTitle)
                            }
                            .frame(width: 100, height: 100)
                        }
                }
            }
        }
    }
}








func getMonth(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "LLLL"
    return dateFormatter.string(from: date)
}

func getDayShort(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "E"
    return dateFormatter.string(from: date)
}

func getDayNumber(date: Date) -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: date)
    return components.day ?? 0
}

func getWeek() -> [Date] {
    let currentDate = Date()

    let calendar = Calendar.current
    let dayOfWeek = calendar.component(.weekday, from: currentDate)
    
    let range = calendar.range(of: .day, in: .month, for: currentDate)!
    
    let daysMonth = (range.lowerBound ..< range.upperBound)
        .compactMap { calendar.date(byAdding: .day, value: $0 - dayOfWeek, to: currentDate) }
    
    return daysMonth
}

struct calender_Previews: PreviewProvider {
    static var previews: some View {
        calender()
    }
}

