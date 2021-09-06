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
            VStack{
                VStack{
                Image(systemName:"swift")
                    .resizable()                .frame(width: 80, height:80, alignment: .center)
                Text("Roy-28%完成度")
                    .font(.title3)
                    .frame( width: 200, height: 100, alignment: .center)
                }
            Rectangle()
                .foregroundColor(Color(#colorLiteral(red: 0.7159921956, green: 0.8880700713, blue: 1, alpha: 1)))
                .frame(width: 380, height: 400, alignment: .top)
                .shadow(color: Color.gray.opacity(0.2), radius: 20, x: 0, y: 20)
                Spacer()
            }
            VStack{
                Spacer()
                HStack{
                    Image(systemName: "paperplane.circle")
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
                        .padding()
                    Text("Billing")
                        .font(.title2)
                        .padding()
                }
                HStack{
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center)
                        .padding()
                    Text("sign out")
                        .font(.title3)
                        .padding()
                    
                }
                Spacer()
            
            }
  
    }
    
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
