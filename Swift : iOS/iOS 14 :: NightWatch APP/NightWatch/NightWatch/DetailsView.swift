//
//  DetailsView.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/22/20.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            Image("Floorplan")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(task.name)
            
            if verticalSizeClass == .regular{
                Divider()
                Text("Placeholder task description text")
            }

            Button("Mark Complete") { task.isComplete = true }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name: "Test task.", isComplete: false, lastCompleted: nil)))
    }
}
