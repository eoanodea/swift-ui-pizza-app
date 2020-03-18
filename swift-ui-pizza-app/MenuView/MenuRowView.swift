//
//  MenuRowView.swift
//  swift-ui-pizza-app
//
//  Created by Eoan on 12/03/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                .cornerRadius(10)
//                .border(Color("G4"), width: 4)
                .shadow(color: Color("G4").opacity(0.5), radius: 5, x: 2.5, y: 2.5)
            VStack(alignment: .leading) {
                Text("The Steve Speciality")
                    .font(.body)
                    .fontWeight(.light)
                RatingsView()
            }
            
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}
