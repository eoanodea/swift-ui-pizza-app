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
    @Binding var quantity:Int
    @Binding var size:Size
    @State var comments:String = ""
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, size: size, quantity: quantity, comments: comments)
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
//                .onTapGesture(count: 2) {
//                    self.isPresented = false
//            }
                .gesture(
                    TapGesture(count: 2)
                        .onEnded {
                          self.isPresented = false
                    }
            )
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            Divider()
            VStack {
                SizePickerView(size: $size)
                QuantityStepperView(quantity: $quantity)
                
//                Stepper(value: $quantity, in: 1...10) {
//                    Text("Quantity: \(quantity)")
//                    .bold()
//                }
//                .padding()
//
//                TextField("Add your comments", text:$comments)
//                    .padding(30)
//                    .background(Color("G4"))
//                Spacer()
//            }.padding(10)
            }
            HStack {
                Button(action: {self.isPresented = false}){
                    Text("Cancel")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom])
                Spacer()
                Button(action: addItem){
                    Text("Add")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom])
            }
        }
        .background(Color("G3"))
        .foregroundColor(.black)
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, orderModel: OrderModel(), isPresented: .constant(true), quantity: .constant(1), size: .constant(.small))
    }
}
