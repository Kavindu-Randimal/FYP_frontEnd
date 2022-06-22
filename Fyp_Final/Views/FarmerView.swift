//
//  FarmerView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-19.
//

import SwiftUI

struct FarmerView: View {
    @State var username: String = ""
    @State var vegitablename: String = ""
    @State private var cultivationDate = Date()
    @State private var harvestingDate = Date()
    @State var fertilizer: String = ""
    
    
    var body: some View {
        VStack{
            Text("AgrO")
                .foregroundColor(Color.green)
                .font(.system(size: 40))
            Spacer()
                .frame(height: 50)
            Text("Enter Food details")
            
            Form {
                VStack{
                    Text("Farmer Name")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    Text("Vegitable ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Vegitablename", text: $vegitablename)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    DatePicker(selection: $cultivationDate, in: ...Date(), displayedComponents: .date) {
                        Text("Select cultivation date")
                    }
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    DatePicker(selection: $harvestingDate, in: ...Date(), displayedComponents: .date) {
                        Text("Select harvesting date")
                    }
                }
                .listRowSeparator(.hidden)
                .padding()
                
                VStack{
                    Text("Enter fertilizer Details")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextEditor(text: $fertilizer)
                        .border(Color.gray, width: 0.2)
                        .frame(height: 200)
                    
                }
                .padding()
                .listRowSeparator(.hidden)
                Spacer()
                HStack{
                    Button(action: {
                        print("Save")
                    }, label: {
                        Text("Save")
                            .frame(width: 60, height: 20)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    })
                    Spacer()
                        .frame(width: 20)
                    Button(action: {
                        print("Cancel")
                    }, label: {
                        Text("Cancel")
                            .frame(width: 60, height: 20)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    })
                }
                .padding(EdgeInsets(top: 0, leading: 70, bottom: 20, trailing: 0))
                
            }
        }
        
    }
}

struct FarmerView_Previews: PreviewProvider {
    static var previews: some View {
        FarmerView()
    }
}
