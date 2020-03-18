//
//  SelectedImageView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 18/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    var image: String
    var body: some View {
        Image(image)
        .resizable()
        .scaledToFit()
        .cornerRadius(30)
            .shadow(color: Color("G2").opacity(0.5), radius: 10, x: 5, y: 5)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "2_250w")
    }
}
