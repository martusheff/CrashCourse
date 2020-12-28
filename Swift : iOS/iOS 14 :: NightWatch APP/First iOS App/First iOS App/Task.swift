//
//  Task.swift
//  First iOS App
//
//  Created by andronick martusheff on 12/23/20.
//

import Foundation

class Task: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
    self.name = name
    self.isComplete = isComplete
    self.lastCompleted = lastCompleted
    }
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
}
