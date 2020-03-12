//
//  MenuListView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack {
            Text("Menu")
            List(0 ..< 5) { item in
                HStack(alignment: .top, spacing: 15) {
                    Image("1_100w")
                    VStack {
                        Text("The Steve Speciality")
                        HStack {
                            ForEach(0..<4) {item in
                                Image("Pizza Slice")
                            }
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
