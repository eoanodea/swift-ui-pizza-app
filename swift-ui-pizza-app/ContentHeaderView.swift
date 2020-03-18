//
//  ContentHeaderView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("steve")
                    .resizable()
                    .scaledToFit()
                Text("Steve Pizza")
                    .font(Font.custom("Avinir-Black", size: 20))
                    .foregroundColor(.white )
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView().environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
