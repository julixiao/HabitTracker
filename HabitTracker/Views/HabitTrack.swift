//
//  HabitTrack.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-05-04.
//

import SwiftUI

@available(macOS 11.0, *)
struct HabitTrack: View {
    var habit: Habit
    var habitRecord: Habit.Record
    var date = Date()
    
    var dateFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateFormat = "MMM d, y"
        return df
    }
    
    @available(macOS 11.0, *)
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text(habit.name)
                    .font(.title)
                
                Divider().foregroundColor(.black)
                
                HStack {
                    Text("\(date, formatter: dateFormatter)")

                    Spacer()
                    
                    if habitRecord.value != 0 {
                        Image(systemName: "checkmark.square")
                    }
                }
            }
            .padding()
        }
        .navigationTitle(habit.name)
    }
}

@available(macOS 11.0, *)
struct HabitTrack_Previews: PreviewProvider {
    static var previews: some View {
        HabitTrack(habit: habits[0], habitRecord: habits[0].records[0])
    }
}
