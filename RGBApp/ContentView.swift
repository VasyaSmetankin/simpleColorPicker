//
//  ContentView.swift
//  RGBApp
//
//  Created by Vasya Smetankin on 14.01.2024.
//

import SwiftUI




struct ContentView: View {
    
    @State var red: Double
    @State var green: Double
    @State var blue: Double
    
    
    var body: some View {
        
        
        ZStack {
            Color.teal.ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
                    .frame(width: 350, height: 200)
                    .overlay(
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                            .stroke(Color.white, lineWidth: 5)
                    )
                    
                    
                    
                    
                
                SliderGroup(red: $red, green: $green, blue: $blue)
                    .padding()
                
                
            }
        }
        
        
    }
}



struct SliderGroup: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    
    var body: some View {
        VStack {
            HStack {
                Text(String(Int(red.rounded())))
                Slider(value: $red, in: 0...255)
                
            }
            HStack {
                Text(String(Int(green.rounded())))
                Slider(value: $green, in: 0...255)
                
                
            }
            HStack {
                Text(String(Int(blue.rounded())))
                Slider(value: $blue, in: 0...255)
                
                
            }
        }
    }
}










#Preview {
    ContentView(red: 0, green: 0, blue: 0)
}
