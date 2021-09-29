//
//  ContentView.swift
//  classic02
//
//  Created by 暨大附中 on 2021/9/3.
//
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false) {
            HStack {
                ForEach(Sections){ sec in
                    GeometryReader { geometry in
                        SectionView(section: sec)
                            .rotation3DEffect(Angle(degrees:
                                Double(geometry.frame(in: .global).minX - 30) / -20
                            ), axis: (x: 0, y: 20, z: 0))
                    }
                    .frame(width: 300, height: 300)
                }
            }
        }.frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5088960933, green: 0.03057411236, blue: 0.5765851994, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.3517869643, blue: 0.288784102, alpha: 1)),Color(#colorLiteral(red: 0.7912009522, green: 0.8549019694, blue: 0.1875744985, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading))
            .ignoresSafeArea()
    
}
}

struct SectionView: View {
    var section: Section
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            
            Text(section.text.uppercased())
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.03293442911, blue: 0.0444077608, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(section.text1.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100)
                .offset(x: 50, y: 0)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 270, height: 270)
        .background(LinearGradient(gradient: Gradient(colors: [section.color,section.color1]), startPoint: .topTrailing, endPoint: .bottomLeading))
        .cornerRadius(90)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var text1:String
    var logo: String
    var image: Image
    var color: Color
    var color1:Color
}

let Sections = [
    Section(title: "我要學好Swift UI", text: "我覺得可以更好",
            text1:"繼續加油",logo: "Good student", image: Image(systemName: "pencil.slash"), color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    Section(title: "我是第二筆資料", text: "繼續努力",
            text1:"認真上課", logo: "精神飽滿", image: Image(systemName: "drop"), color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), color1: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))),
    Section(title: "我是第三筆資料", text: "加油加油",text1:"我們一定可以的", logo: "精神飽滿", image: Image(systemName: "leaf.fill"), color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), color1: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))),
    Section(title: "我是第四筆資料", text: "勤做筆記",text1:"好吧", logo: "精神飽滿", image: Image(systemName: "pencil"), color: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)), color1: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    Section(title: "我是第五筆資料", text: "接收100%",text1:"我一定可以", logo: "精神飽滿", image: Image(systemName: "hourglass"), color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), color1: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))),
    Section(title: "我是第六筆資料", text: "天才就是99%的努力＋1%的運氣",text1:"1+1會<2", logo: "精神飽滿", image: Image(systemName: "rectangle.and.pencil.and.ellipsis"), color: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)), color1: Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    
]

