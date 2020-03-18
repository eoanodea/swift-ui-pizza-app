//
//  HistoryListView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var body: some View {
        VStack {
            ListHeaderView(text: "Order History")
            SelectedImageView(image: "1_250w")
                .padding(5)
            List(0 ..< 5) { item in
                HistoryRowItem()
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}
