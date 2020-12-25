//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    
    @State var name = ""
    @State var number = 0
    
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                
                TextField ("اكتب اسمك هنا \(name)", text: $name)
                    
                    .frame(width: 2.0)
                
        
                Stepper("كم بطلا من الماء تتعهد ان تشرب؟   .", value: $number, in: 1...100)
                    .padding(.horizontal)
                
                
                Spacer()
                
                
            }
            VStack(alignment: .center) {
                Text("اتعهد انا")
                    .font(.title)
                
                Text("\(name)")
                    .font(.title)
                Text("ان اشرب ")
                    .font(.title)
                Text("\(number)")
                    
                    .font(.title)
                Text("من أكواب الماء يومياً")
                    .font(.title)
                Text("والله على ما أقول شهيد")
                    .font(.title)
                
            }
            
            
            
            .padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
            .previewDevice("iPhone 11")
    }
}
