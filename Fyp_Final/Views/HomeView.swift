//
//  HomeView.swift
//  Fyp_Final
//
//  Created by Randimal Geeganage on 2022-06-21.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        VStack{
            Text("AgrO")
                .foregroundColor(Color.green)
                .font(.system(size: 70))
            Spacer()
                .frame(height: 100)
            Image("agropng")
                .resizable()
                .frame(width: 200, height: 200)
            Spacer()
                .frame(height: 100)
            VStack{
                Button(action: {
                    print("QR")
                }, label: {
                    Text("Scan QR")
                        .frame(width: 170, height: 20)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                })
                Button(action: {
                    print("add")
                }, label: {
                    Text("Add Details")
                        .frame(width: 170, height: 20)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                })
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
