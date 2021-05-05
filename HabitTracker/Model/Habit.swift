//
//  Habit.swift
//  HabitTracker
//
//  Created by Julie Xiao on 2021-05-04.
//

import Foundation

struct Habit: Hashable, Codable {
    var name: String
    var colour: String
    var target: Int
    
    var records: [Record]
    struct Record: Hashable, Codable {
        var date: String
        var value: Int
    }
}
