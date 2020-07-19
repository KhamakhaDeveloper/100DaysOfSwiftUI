//
//  PickerScrollView.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI
struct  PickerScrollView: View {
    @State private var selectedIndex = 0
    @State private var contactData = ContactModel.dummyData()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .leading) {
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
                
                ForEach(contactData, id: \.self) { listObject in
                    NavigationLink(destination: DetailView(contactData: listObject)){
                        ContactCellView(contactData: listObject)
                    }
                }
            }
        })
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .navigationBarTitle("Scroll Picker")
    }
}

struct  PickerScrollView_Previews: PreviewProvider {
    static var previews: some View {
        PickerScrollView()
    }
}
