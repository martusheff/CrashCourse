//
//  Task.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/23/20.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
