//
//  ListHeaderView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 18/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    @State var isSteveDisplayed: Bool = true
    @ObservedObject var orderModel: OrderModel
    var text: String
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .padding([.leading, .top, .bottom], 30)
                    .foregroundColor(Color("G2"))
                if self.isSteveDisplayed {
                 ContentHeaderView()
                }
                Text(orderModel.formattedTotal)
                    .fontWeight(.heavy)
                    .padding(.trailing)
            }
            Button(action: {self.isSteveDisplayed.toggle()}) {
            
                PageTitleView(title: "Your one stop shop for good steves and good pizza", isDisplaying: isSteveDisplayed)
                }
        }.background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), text: "Menu")
    }
}
