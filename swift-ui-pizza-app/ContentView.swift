//
//  ContentView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Steve Pizza").font(.title)
            Image("steve").resizable().scaledToFit()
            Text("Your one stop shop for good steves and good pizza").font(.body)
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
    
}
