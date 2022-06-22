//
//  LoginView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-19.
//

import SwiftUI
import FirebaseAuth

class AppViewModel:ObservableObject {
    let auth = Auth.auth()
    var isSignIn : Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password){
            result,error in
            
            guard result != nil, error != nil else {
                return
            }
//            success
        }
    }
    
    func signUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password){
            result,error in
            
            guard result != nil, error != nil else {
                return
            }
//            success
    }
}


struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var viewModel : AppViewModel
    
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
                    TextField("Email", text: $email)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                .listRowSeparator(.hidden)
                VStack{
                    Text("Password ")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    SecureField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(10)
                .listRowSeparator(.hidden)
                VStack{
                    Button(action: {
                        guard !email.isEmpty, !password.isEmpty else {
                            return
                        }
                        viewModel.signIn(email: email, password: password)
                    }, label: {
                        Text("login")
                            .frame(width: 60, height: 5)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    })
                }
                .padding(EdgeInsets(top: 10, leading: 130, bottom: 0, trailing: 0))
                Text("dont have an account? Signup")
                
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.system(size: 10))
                    .foregroundColor(.green)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
}
