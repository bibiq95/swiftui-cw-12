//
//  ContentView.swift
//  day8
//
//  Created by alqattan on 07/01/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env : Env
    var body: some View {
        VStack{
            Text("مرحباً بك في الكويت تبرمج")
                .padding(.bottom,50) .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).font(.title)
            Button(action:{
                env.ismentor.toggle()
                
            }){
                Text("ادخل بياناتك")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
        }
            .sheet(isPresented: $env.ismentor) {
            
                secondpage(env:self.env)
        }
            if env.name != ""
         {
            HStack{
                Spacer()
                VStack{
                    Text("الاسم : \(env.name)")
                    Text("العمر : \(env.age)")
                    Text("التلفون : \(env.phone)")

                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            }
        
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
