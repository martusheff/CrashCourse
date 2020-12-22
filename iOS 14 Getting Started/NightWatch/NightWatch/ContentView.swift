//
//  ContentView.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                
                // MARK: NIGHTLY TASKS
                Group {
                    HStack {
                        Text(Image(systemName: "moon.stars"))
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Nightly Tasks")
                            
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .underline()
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)

                    }
                    .padding(.bottom, 1.0)
                        
                    Text("- Check all windows.")
                    Text("- Check all doors.")
                    Text("- Check that the safe is locked.")
                    Text("- Check the mailbox.")
                    Text("- Inspect security cameras.")
                }
                
                // MARK: WEEKLY TASKS
                Group {
                    Divider()
                        .padding(.bottom, 1.0)
                    HStack {
                        Text(Image(systemName: "sunset"))
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Text("Weekly Tasks")
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .underline()
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        
                            
                    }
                    .padding(.bottom, 1.0)
                    Text("- Check inside all vacant rooms.")
                    Text("- Walk the perimeter of property.")
                }
                
                // MARK: MONTHLY TASKS
                Group {
                    Divider()
                        .padding(.bottom, 1.0)
                    HStack {
                        Text(Image(systemName: "calendar"))
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Text("Monthly Tasks")
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                            .underline()
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.bottom, 1.0)
                    Text("- Test security alarm.")
                    Text("- Test motion detectors.")
                    Text("- Test smoke alarms.")
                }
                
                Spacer()
                    
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
