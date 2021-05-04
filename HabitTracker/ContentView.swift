//
//  ContentView.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-03-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Habit Tracker")
                .font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Habit Name")
                    .font(.subheadline)
                Spacer()
                Text("Done")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
