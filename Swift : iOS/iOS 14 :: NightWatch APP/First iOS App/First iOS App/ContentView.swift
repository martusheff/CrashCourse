//
//  ContentView.swift
//  First iOS App
//
//  Created by andronick martusheff on 12/21/20.
//

import SwiftUI



struct ContentView: View {

    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Map")
                Image(systemName: "calendar")
            }
            MapView().tabItem {
                Image(systemName: "house.fill")
            }
            SettingsView().tabItem {
                Text("Settings")
                Image(systemName: "text.aligncenter")}
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @State private var theTask = Task(name: "Check all Windows", isComplete: false, lastCompleted: nil)
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ?
                    "checkmark.square" :"square")
                Text(theTask.name)
            }
            ControlPanel(theTask: self.$theTask)
        }
    }
}

struct MapView: View {
    var body: some View {
        Text("TODO: IMPLEMENT MAP")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("SETTINGS")
    }
}

struct ControlPanel: View {
    @Binding var theTask: Task
    var body: some View {
        if theTask.isComplete == false {
            Button(action: {
                theTask.isComplete = true
            }) {
                Text("Check")
            }.padding(.top)
        } else {
            Button(action: {
                theTask.isComplete = false
            }) {
                Text("Uncheck")
            }.padding(.top)
        }
    }
    }

