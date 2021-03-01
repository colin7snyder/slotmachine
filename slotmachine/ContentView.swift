//
//  ContentView.swift
//  slotmachine
//
//  Created by Colin Snyder on 2/23/21.
//

import SwiftUI

struct ContentView: View {
   
    @State private var number = 1000
    @State private var image1 = Image("cherry")
    @State private var image2 = Image("cherry")
    @State private var image3 = Image("cherry")
    
    
    var body: some View {
        
        
        
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                
                //Main Text
                Text("SwiftUI Slots!")
                    .font(.largeTitle)
                Spacer()
                        .frame(height: 120)
                
                //Sub Text
                Text("Credits: " + String(number))
                Spacer()
                        .frame(height: 120)
                
                //Images
                HStack {
                    Spacer()
                    image1.resizable()
                        .frame(width: 120, height: 120)
                    image2.resizable()
                        .frame(width: 120, height: 120)
                    image3.resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                
                Spacer()
                        .frame(height: 120)
                
                //Button
                Button(action: {
                    
                    let randomInt1 = Int.random(in: 1...3)
                    let randomInt2 = Int.random(in: 1...3)
                    let randomInt3 = Int.random(in: 1...3)
                    
                    if randomInt1 == 1 {
                        image1 = Image("cherry")
                    }
                    else if randomInt1 == 2 {
                        image1 = Image("star")
                    }
                    else {
                        image1 = Image("apple")
                    }
                    
                    if randomInt2 == 1 {
                        image2 = Image("cherry")
                    }
                    else if randomInt2 == 2 {
                        image2 = Image("star")
                    }
                    else {
                        image2 = Image("apple")
                    }
                    
                    if randomInt3 == 1 {
                        image3 = Image("cherry")
                    }
                    else if randomInt3 == 2 {
                        image3 = Image("star")
                    }
                    else {
                        image3 = Image("apple")
                    }
                    
                    decider()
                    
                    
                    
                    
                }, label: {
                    ZStack {
                    Rectangle()
                        .fill(Color(red: 1.0, green: 0.2, blue: 0.3, opacity: 1.0))
                        .frame(width: 120, height: 40)
                        .cornerRadius(30)
                        Text("Spin")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    
                })
                
                Spacer()
                        .frame(height: 120)
                
                
                
                
                
                
            }
        }
        
        
        
    }

    func decider() {
        if (image1 == image2) && (image2 == image3) {
            number += 50
        }
        else {
                number -= 5
            }
        }
    }
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



