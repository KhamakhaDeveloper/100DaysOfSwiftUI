//
//  PickerListView.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI

struct PickerListView: View {
    @State private var selectedIndex = 0
    @State private var contactData = ContactModel.dummyData()
    var body: some View {
        VStack(spacing: 10) {
            Picker("Sort Contacts By:", selection: $selectedIndex) {
                Text("Name").tag(0)
                Text("Email").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .onReceive([self.selectedIndex].publisher.first()) { (tag) in
                switch tag {
                case 0:
                    contactData.sort { $0.name < $1.name}
                case 1:
                    contactData.sort { $0.email > $1.email }
                default:
                    break
                }
            }
            
            List(contactData, id: \.self) { contactData in
                NavigationLink(destination: DetailView(contactData: contactData)){
                    ContactCellView(contactData: contactData)
                }
            }
        }
        .navigationBarTitle("Contacts")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct PickerListView_Previews: PreviewProvider {
    static var previews: some View {
        PickerListView()
    }
}
