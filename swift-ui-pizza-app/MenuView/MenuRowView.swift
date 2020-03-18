//
//  MenuRowView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem:MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w")
                    .cornerRadius(10)
                    .shadow(color: Color("G4").opacity(0.5), radius: 5, x: 0.5, y: 0.5)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.body)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
            }
            Text(menuItem.description).padding(10)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[2])
    }
}
