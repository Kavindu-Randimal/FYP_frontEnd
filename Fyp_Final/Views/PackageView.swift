//
//  PackageView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-19.
//

import SwiftUI

struct PackageView: View {
    @State var packagername: String = ""
    @State var vegitablename: String = ""
    @State private var packagingdate = Date()
    @State var status: String = ""
    
    
    var body: some View {
        VStack{
            Text("AgrO")
                .foregroundColor(Color.green)
                .font(.system(size: 40))
            Spacer()
                .frame(height: 50)
            Text("Packaging")
            
            Form {
                List{
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                
                VStack{
                    Text("Packager Name")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("packager name", text: $packagername)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                .listRowSeparator(.hidden)
                
                VStack{
                    DatePicker(selection: $packagingdate, in: ...Date(), displayedComponents: .date) {
                        Text("Select packaging date")
                    }
                }
                .padding()
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
                .listRowSeparator(.hidden)
            }
        }
        
    }
}
struct PackageView_Previews: PreviewProvider {
    static var previews: some View {
        PackageView()
    }
}
