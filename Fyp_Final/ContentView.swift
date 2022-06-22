//
//  ContentView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-19.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        Text("hi")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

struct Home : View {
    var body: some View {
        Text("hi")
    }
}

struct Login : View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var visible = false
    
    var body: some View {
        VStack {
            Image("agropng")
                .resizable()
                .frame(width: 20, height: 20)
            
            TextField("Email", text: self.$email)
                .padding()
            //                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2)
            
            HStack(spacing: 10){
                VStack{
                    if self.visible{
                        TextField("Password", text: self.$password)
                    }else {
                        SecureField("Password", text: self.$password)
                    }
                }
                Button(action: <#T##() -> Void#>, label: <#T##() -> _#>)
            }
        }
        .padding(.horizontal,25)
    }
}
