//
//  TabView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct TabItemsView: View {
    var body: some View {
        TabView {
            MenuListView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Menu")
                }
            OrderListView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Your Order")
                }
            HistoryListView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Order History")
                }
        }
    }
}

struct TabItemsView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemsView()
    }
}
