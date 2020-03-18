//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @ObservedObject var orderModel:OrderModel
    @Binding var isPresented:Bool
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
            Divider()
            Text("Confirm your order of \(name) pizza")
                .font(.headline)
            Spacer()
            Button(action: addItem){
                Text("Add")
                    .font(.title)
                .padding()
                .background(Color("G4"))
                .cornerRadius(10)
            }.padding([.bottom])
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, orderModel: OrderModel(), isPresented: .constant(true))
    }
}
