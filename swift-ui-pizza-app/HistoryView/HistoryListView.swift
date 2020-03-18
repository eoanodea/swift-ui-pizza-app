//
//  HistoryListView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var historyList = HistoryModel()
    @State var imageID: Int = 0
    
    var body: some View {
        VStack {
//            ListHeaderView(text: "Order History")
            NavigationView{
                List(historyList.historyItems) { item in
                    NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)) {
                        HistoryRowItem(historyItem: item)
                        .listRowInsets(EdgeInsets())
                    }
                }
            .navigationBarTitle("Menu")
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}
