//
//  PageTitleView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplaying: Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.body)
                .fontWeight(.bold)
                .padding(20)
                .padding(.leading, 30)
        }.overlay(
            
            Image(systemName: "chevron.up.square" )
                .rotationEffect(isDisplaying ?? false ? Angle(degrees:0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.2))
                .font(.title)
                .foregroundColor(isDisplaying != nil ? Color("G1") : .clear)
            .padding()
            , alignment: .leading
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Your one stop shop for good steves and good pizza", isDisplaying: true)
    }
}
