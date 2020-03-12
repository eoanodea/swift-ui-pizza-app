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
            ContentHeaderView()
            MenuListView()
            OrderListView()
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
    
}
