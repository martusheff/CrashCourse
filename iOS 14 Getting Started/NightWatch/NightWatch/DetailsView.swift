//
//  DetailsView.swift
//  NightWatch
//
//  Created by andronick martusheff on 12/22/20.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder task description text")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Task Name!!!")
    }
}
