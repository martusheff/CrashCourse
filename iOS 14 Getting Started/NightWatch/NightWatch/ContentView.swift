//
//  ContentView.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/21/20.
//

import SwiftUI







struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    var body: some View {
        
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id: \.0.id, content: {
                        task, taskIndex in
                        
                        let nightWatchTasksWrapper = $nightWatchTasks
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks
                        
                        let theTaskBinding = tasksBinding[taskIndex]
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                
//                Section(header: TaskSectionHeader(symbolSystemName: "sunrise", headerText: "Weekly Tasks")) {
//                    ForEach(nightWatchTasks.weeklyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
//
//                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
//                    ForEach(nightWatchTasks.monthlyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
            }.listStyle(GroupedListStyle())
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }.font(.title3)
    }
}

struct TaskRow: View {
    let task: Task
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
        }
    }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test task.", isComplete: false, lastCompleted: nil))
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}





