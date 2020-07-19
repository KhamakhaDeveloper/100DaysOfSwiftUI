//
//  DetailView.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI

struct DetailView: View {
    var contactData = ContactModel(id: UUID(), name: "", email: "", cellNumber: "", image: "")
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .foregroundColor(.random)
                    .frame(width: 40, height: 40, alignment: .leading)
                    .opacity(0.2)
                Text(contactData.name)
                    .font(.headline)
                Text(contactData.email)
                    .font(.subheadline)
                Spacer()
                Text("\(contactData.id)")
                    .font(.caption)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
