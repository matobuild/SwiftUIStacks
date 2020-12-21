//
//  SwiftUIViewExcercise2.swift
//  SwiftUIStacks
//
//  Created by kittawat phuangsombat on 2020/12/21.
//

import SwiftUI

struct SwiftUIViewExcercise2: View {
    var body: some View {
      
        ZStack {
           
            PricingViewExcercise(topText: "Basic", middleText: "$9", bgColor: .purple, icon: "airplane")
                .offset(x: 0, y: 180)

            PricingViewExcercise(topText: "Pro", middleText: "$19", bgColor: .yellow, icon: "car")
                .offset(x: 0, y: 0)
                .scaleEffect(0.95)
            PricingViewExcercise(topText: "Team", middleText: "$299", bgColor: .gray, icon: "pencil")
                .offset(x: 0, y: -180)
                .scaleEffect(0.9)
        }
    }
}

struct SwiftUIViewExcercise2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExcercise2()
    }
}

struct PricingViewExcercise: View{
    var topText:String
    var middleText:String
    var bgColor: Color
    var icon: String
    
    var body: some View{
        VStack {
            Image(systemName: icon)
                .font(.system(.largeTitle))
                .foregroundColor(.white)
            
            Text(topText)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
            Text(middleText)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            Text("per month")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 130)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
        .padding()
    
}

}
