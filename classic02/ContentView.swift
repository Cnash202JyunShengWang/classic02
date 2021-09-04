//
//  ContentView.swift
//  classic02
//
//  Created by 暨大附中 on 2021/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("i am good")
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .font(.title)
                .padding(.top,40)
            
            Text("i am good")
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .font(.title)
                .padding(.bottom,40)
        }
        .frame(width: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .frame(maxWidth:.infinity)
        .background(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
        .cornerRadius(26)
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
