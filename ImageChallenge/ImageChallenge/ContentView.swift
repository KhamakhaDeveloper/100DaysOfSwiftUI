//
//  ContentView.swift
//  ImageChallenge
//
//  Created by Deepak Carpenter on 06/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            Text("The Joker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("darkPurple"))
            Image("joker2")
                .resizable() // Resizes the image for entire screen based on device orientation
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                //.clipShape(Circle())
                .border(Color.purple, width: 5)
                .cornerRadius(20)
                .clipped()
            Text("Why So Serious?")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color("darkPurple"))
            Image(systemName: "video.fill")
                .resizable()
                .font(.largeTitle)
                .foregroundColor(.purple)
                .frame(width: 40, height: 30, alignment: .center)
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
