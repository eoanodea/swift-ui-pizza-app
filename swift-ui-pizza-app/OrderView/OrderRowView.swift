//
//  OrderRowView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var price: Int
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Your order item here")
                .font(.headline)
            Spacer()
            Text("€\(price)")
            .bold()
        }
    }
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(price: 3)
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
