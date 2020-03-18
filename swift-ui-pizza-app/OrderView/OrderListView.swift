//
//  OrderListView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var prices = [12, 15, 10, 9, 2]
    var body: some View {
        VStack {
            ListHeaderView(text: "Current Order")
            List(0 ..< 5) { item in
                OrderRowView(price: 20)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
