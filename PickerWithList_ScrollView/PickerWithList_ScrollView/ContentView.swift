//
//  ContentView.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationLink(destination: PickerListView()) {
                    Text("Picker List View →")
                        .fontWeight(.semibold)
                        .font(.body)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: PickerScrollView()) {
                    Text("Picker Scroll View →")
                        .fontWeight(.semibold)
                        .font(.body)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
           .navigationBarTitle("HDO SwiftUI - Week IV")
           .lineSpacing(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
