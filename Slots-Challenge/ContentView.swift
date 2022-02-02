//
//  ContentView.swift
//  Slots-Challenge
//
//  Created by PoKai Huang on 2022-02-02.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                
            VStack {
                Text("SwiftUI Slots")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.all, 10)
                    .background(Color.gray)
                    .cornerRadius(10)
                    
                Text("Credits: \(credits)")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.all, 10)
                    .background(Color.gray)
                    .cornerRadius(10)
                if credits <= 0 {
                    Text("Sorry... You Lose.")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.all, 10)
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                HStack{
                    
                    Image("fruit\(slot1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        
                    Image("fruit\(slot2)")
                        .resizable()
                        .scaledToFit()
                    Image("fruit\(slot3)")
                        .resizable()
                        .scaledToFit()
                    
                }
                Spacer()
                Button {
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    if slot1 == slot2 && slot2 == slot3{
                        credits += 25
                    }
                    else {
                        credits -= 50
                    }
                    
                } label: {
                    Text("Spin")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.all, 20.0)
                        .background(Color.gray)
                        .cornerRadius(20)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
