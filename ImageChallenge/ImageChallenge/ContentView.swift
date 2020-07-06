//
//  ContentView.swift
//  ImageChallenge
//
//  Created by Deepak Carpenter on 06/07/20.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var index = 0
    var images = ["joker1", "joker2", "joker3"]
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(content: {
            Text("The Joker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("darkPurple"))
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(1..<4) {
                        Image("joker\($0)")
                            .resizable() // Resizes the image for entire screen based on device orientation
                            .scaledToFill()
                            .frame(width: 300, height: 300, alignment: .center)
                            //.clipShape(Circle())
                            .border(Color.purple, width: 5)
                            .cornerRadius(20)
                            .clipped()
                            .shadow(color: .gray, radius: 5.0, x: 2, y: 2)
                            .scaleEffect()
                            .onReceive(self.timer) { _ in
                               //_ =  self.animation(.spring(response: 5.0, dampingFraction: 5.0, blendDuration: 5.0))
                            }
                    }
                }
                .frame(maxWidth: .infinity)
              //  .onReceive(self.timer) { _ in
                  //  self.index = (self.index + 1) % 3
                    //print(self.index)
                //}
            }
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

