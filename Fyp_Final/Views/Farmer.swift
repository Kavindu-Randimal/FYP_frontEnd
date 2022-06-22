//
//  Farmer.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-21.
//

import SwiftUI

struct Farmer: View {
    @State var username: String = ""
    @State var vegetablename: String = ""
    @State private var date = Date()
    @State var fertilizer: String = ""
    @State var stage: String = ""
    @State var spec: String = ""
    
    
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
                    TextField("Farmer name", text: $username)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    Text("Vegetable ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Vegetablename", text: $vegetablename)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    Text("Stage")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("fertilizering,cultivation,harvesting or packaging", text: $stage)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                
                VStack{
                    DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                        Text("Date")
                    }
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    Text("Spec")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("enter specification", text: $spec)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                .listRowSeparator(.hidden)
                VStack{
                    Text("Enter  Details")
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


struct Farmer_Previews: PreviewProvider {
    static var previews: some View {
        Farmer()
    }
}
