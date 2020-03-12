//
//  ContentHeaderView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("steve").resizable().scaledToFit()
                Text("Steve Pizza").font(.title)
            }
            Text("Your one stop shop for good steves and good pizza")
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}
