//
//  HabitTrack.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-05-04.
//

import SwiftUI

struct HabitTrack: View {
    var habit: Habit
    var habitRecord: Habit.Record
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Habit Tracker")
                    .font(.title).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                
                Divider().foregroundColor(.black)
                
                HStack {
                    Text(habit.name)
                        .font(.subheadline)
                    Spacer()
                    Text(String(habitRecord.value))
                        .font(.subheadline)
                }
            }
            .padding()
        }
//        .navigationTitle(habit.name)
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HabitTrack_Previews: PreviewProvider {
    static var previews: some View {
        HabitTrack(habit: habits[0], habitRecord: habits[0].records[0])
    }
}
