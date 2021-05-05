//
//  HabitRow.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-05-04.
//

import SwiftUI

struct HabitRow: View {
    var habit: Habit
    
    var body: some View {
        HStack{
            Text(habit.name)
            Spacer()
        }
    }
}

struct HabitRow_Previews: PreviewProvider {
    static var previews: some View {
        HabitRow(habit: habits[1])
            .previewLayout(.fixed(width: 400, height: 80))
    }
}
