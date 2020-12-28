//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/23/20.
//

import Foundation

class NightWatchTasks: ObservableObject {
    @Published var nightlyTasks = [
        Task(name: "Check all windows.", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors.", isComplete: false, lastCompleted: nil),
        Task(name: "Check that the safe is locked.", isComplete: false, lastCompleted: nil),
        Task(name: "Check the mailbox.", isComplete: false, lastCompleted: nil)
    ]
    @Published var weeklyTasks = [
        Task(name: "Inspect integrity of security cameras.", isComplete: false, lastCompleted: nil),
        Task(name: "Check inside all vacant rooms.", isComplete: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of the property.", isComplete: false, lastCompleted: nil)

    ]
    @Published var monthlyTasks = [
        Task(name: "Test security alarm.", isComplete: false, lastCompleted: nil),
        Task(name: "Test motion detectors.", isComplete: false, lastCompleted: nil),
        Task(name: "Test smoke alarms.", isComplete: false, lastCompleted: nil)
    ]
}
