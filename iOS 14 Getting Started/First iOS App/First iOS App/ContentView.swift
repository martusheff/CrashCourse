//
//  ContentView.swift
//  First iOS App
//
//  Created by andronick martusheff on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
            HStack{
                Spacer()
                Rectangle()
                Spacer()
            }
            HStack {
                Spacer(minLength: 50)
                RoundedRectangle(cornerRadius: 25.0)
                Spacer(minLength: 100)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                Spacer(minLength: 50)
            }
        }
        Text("Hello, World!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
