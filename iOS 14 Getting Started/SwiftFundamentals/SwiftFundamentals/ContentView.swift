//
//  ContentView.swift
//  SwiftFundamentals
//
//  Created by andronick martusheff on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Current Count: \(count)")
            
            HStack {
                
                VStack {
                    
                    Button(action: { self.count += 1 }) {
                        Text("Increment")}

                }
                VStack {
                    Button(action: { self.count = 0 }) {
                        
                        Text("Reset")
                            .accentColor(.red)
                    }
                }
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
