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
                Image(systemName: "house")
            }
            MapView().tabItem {
                /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                Image(systemName: "map")
            }
            SettingsView().tabItem {
                Text("Settings")
                Image(systemName: "gear")}
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        Text("TODO: BUILD HOME SCREEN")
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
