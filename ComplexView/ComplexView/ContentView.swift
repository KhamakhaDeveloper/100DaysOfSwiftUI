//
//  ContentView.swift
//  ComplexView
//
//  Created by Deepak Carpenter on 03/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Go To Detail View →")
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .navigationBarTitle("Complex View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
