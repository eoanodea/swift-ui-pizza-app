//
//  HistoryRowItem.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct HistoryRowItem: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color("G4").opacity(0.5), radius: 5, x: 0.5, y: 0.5)
            Text("The Janice Murray is stressed original")
                .font(.body)
            Spacer()
        }.overlay(Image(systemName: "chevron.right.square")
        .padding()
        .font(.title)
        .foregroundColor(Color("G3"))
        , alignment: .trailing
        )
    }
}

struct HistoryRowItem_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowItem()
    }
}
