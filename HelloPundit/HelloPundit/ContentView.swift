//
//  ContentView.swift
//  HelloPundit
//
//  Created by Deepak Carpenter on 29/06/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, Pundit!")
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .shadow(radius: 20)
            .clipShape(Capsule())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
