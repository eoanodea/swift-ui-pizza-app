//
//  HistoryDetailView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 18/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
  var historyItem:HistoryItem
  @State var isPresented:Bool = false
  @Binding var imageID:Int
  var body: some View {
    imageID = historyItem.id
    return ScrollView {
        VStack {
            PageTitleView(title: historyItem.name)
            MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 100000)
                .frame(height: 200)
            PresentMapButton(isPresented: $isPresented, historyItem: historyItem)
            Text(historyItem.history)
                .fixedSize(horizontal: false, vertical: true)
                .padding(30)
            SelectedImageView(image: "\(imageID)_250w")
            Spacer()
          }
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
