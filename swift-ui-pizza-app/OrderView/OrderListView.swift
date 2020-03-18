//
//  OrderListView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            List {
                Section(
                    header: ListHeaderView(orderModel: self.orderModel, text: "Current Order")
                    ) {
                        ForEach(orderModel.orders) {item in
                            OrderRowView(orderItem: item)
                        }
                        .onDelete(perform: delete)
                }
            }
        }
    }
    func delete(at offsets: IndexSet) {
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
