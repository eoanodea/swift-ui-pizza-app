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
  @Binding var imageID:Int
  var body: some View {
      imageID = historyItem.id
      return VStack {
            PageTitleView(title: historyItem.name)
            SelectedImageView(image: "\(imageID)_250w")
            Text(historyItem.history)
                .frame(height:300)
                .padding(30)
            Spacer()
      }
  }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
