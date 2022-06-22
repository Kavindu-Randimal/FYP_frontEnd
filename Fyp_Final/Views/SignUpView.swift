//
//  SignUpView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-19.
//

import SwiftUI

struct SignUpView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var repassword: String = ""
    
    var body: some View {
        VStack{
            Text("AgrO")
                .foregroundColor(Color.green)
                .font(.system(size: 40))
            Spacer()
                .frame(height: 50)
            
            Form {
                VStack{
                    Text("User Name")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                .listRowSeparator(.hidden)
                VStack{
                    Text("Password ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                .listRowSeparator(.hidden)
                
                VStack{
                    Text("Re-enter Password ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Re-Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                .listRowSeparator(.hidden)
                VStack{
                    Button(action: {
                        print("SignUp")
                    }, label: {
                        Text("SignUp")
                            .frame(width: 60, height: 5)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    })
                }
                .padding(EdgeInsets(top: 10, leading: 130, bottom: 0, trailing: 0))
                Text("Already have an account? Login")
                
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 10))
                    .foregroundColor(.green)
            }
        }
        
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
