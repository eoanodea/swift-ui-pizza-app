//
//  TabView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        TabView {
            MenuListView(orderModel: orderModel)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Menu")
                }
            OrderListView(orderModel: orderModel)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Your Order")
                }
            HistoryListView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView(orderModel: OrderModel())
        .environmentObject(UserPreferences())
    }
}
