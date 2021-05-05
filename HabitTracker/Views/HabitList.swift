//
//  HabitList.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-05-04.
//

import SwiftUI


struct HabitList: View {
    var body: some View {
        NavigationView {
            List(habits, id: \.name) { habit in
                NavigationLink(destination: HabitTrack(habit: habit, habitRecord: habit.records[0])){
                    HabitRow(habit: habit)
                }
            }
//            .navigationTitle("Habits")
        }
    }
}

struct HabitList_Previews: PreviewProvider {
    static var previews: some View {
        HabitList()
    }
}
