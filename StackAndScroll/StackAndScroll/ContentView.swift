//
//  ContentView.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 15/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationLink(destination: StackView()) {
                    Text("StackView →")
                        .fontWeight(.semibold)
                        .font(.body)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ListView()) {
                    Text("ListView →")
                        .fontWeight(.semibold)
                        .font(.body)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ListScrollView()) {
                    Text("ScrollView →")
                        .fontWeight(.semibold)
                        .font(.body)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
           .navigationBarTitle("100 Days of swiftUI - Week III")
           .lineSpacing(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
