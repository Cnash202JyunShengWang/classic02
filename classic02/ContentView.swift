//
//  ContentView.swift
//  classic02
//
//  Created by 暨大附中 on 2021/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(#colorLiteral(red: 0.8876258614, green: 0.8876258614, blue: 0.8876258614, alpha: 1)))
                .frame(width: 380, height: 400, alignment: .top)
                .cornerRadius(26)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            Image("01")
                .resizable()
                .frame(width: 80, height:80, alignment: .top)
                .cornerRadius(90)
                .offset(x: 10, y:-250)
            Text("Roy-28%完成度")
                .font(.title3)
                .frame( width: 200, height: 100, alignment: .center)
                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: -150)
            ZStack{
              SecondView()
                }
            .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: -120)
            VStack{
                HStack{
            Image(systemName: "gear")
                .resizable()
                .frame(width: 50, height: 50/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.top)
                .padding()
            Text("Account")
                .font(.title2)
                .padding()
                }
                HStack{
            Image(systemName: "folder")
                .resizable()
                .frame(width: 50/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.bottom)
                .padding(.trailing,35)
            Text("Billing")
                .font(.title2)
                .padding(.trailing)
                }
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
                        .padding()
                    Text("Sign out")
                        .font(.title3)
                        .padding()
                }
            }
            .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: 50)
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
