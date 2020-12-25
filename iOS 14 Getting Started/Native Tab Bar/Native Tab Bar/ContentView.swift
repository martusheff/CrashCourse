//
//  ContentView.swift
//  Native Tab Bar
//
//  Created by andronick martusheff on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// TabItems..
var tabItems = ["Calendar","Home","Prayers"]

struct Home : View {
    @State var selected = "Home"
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack (spacing: 0){
            TabView(selection: $selected) {
                Color.red
                    .tag(tabItems[0])
                    .ignoresSafeArea(.all, edges: .top)
                
                
                Color.blue
                    .tag(tabItems[1])
                    .ignoresSafeArea(.all, edges: .top)

                
                Color.yellow
                    .tag(tabItems[2])
                    .ignoresSafeArea(.all, edges: .top)
            }
            
            // Custom Tab Bar
            
            HStack(spacing: 0){
                ForEach(tabItems, id: \.self) {
                    
                
                }
            }
        }
    }
}
struct TabBarButton : View {
    @Binding var selected: String
    var value: String
    var body: some View{
        Button(action: {}, label: {
            VStack {
                Image(
            }
        })
    }
}
