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
            ZStack {
                Image("steve").resizable().scaledToFit()
                Text("Steve Pizza").font(.title)
            }
            VStack(alignment: .center) {
                Text("Your one stop shop for good steves and good pizza").font(.body)
            }
            List(0 ..< 5) { item in
                HStack(alignment: .top, spacing: 15) {
                    Image("1_100w")
                    Text("The Steve Speciality")
                    Spacer()
                }
            }
            
            Text("Your Order")
            List(0 ..< 5) { item in
                    HStack(alignment: .firstTextBaseline) {
                        Text("Your order item here")
                        Spacer()
                        Text("$0.00")
                    }
            }
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
    
}
