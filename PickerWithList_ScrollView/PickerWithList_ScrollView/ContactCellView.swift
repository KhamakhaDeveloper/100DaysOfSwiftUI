//
//  ContactCellView.swift
//  PickerWithList_ScrollView
//
//  Created by Deepak Carpenter on 19/07/20.
//

import SwiftUI

struct ContactCellView: View {
    @State private var showSecondView = true

    @State private var showAlert = false
    var contactData = ContactModel(id: UUID(), name: "Augie Tiptaft", email: "atiptaft0@ask.com", cellNumber: "450-859-1577", image: "http://dummyimage.com/204x206.bmp/5fa2dd/ffffff")
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundColor(.random)
                .frame(width: 40, height: 40, alignment: .leading)
                .opacity(0.5)
            VStack(alignment: .leading) {
                Text(contactData.name)
                    .font(.headline)
                Text(contactData.email)
                    .font(.subheadline)
            }
            Spacer()
            Button(action: sendMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
                    .padding(.trailing, 10)
            }
            .alert(isPresented: $showAlert) { () -> Alert in
                Alert(title: Text("In Developent"), message: Text("Wait for the next update in order to send message"), dismissButton: .destructive(Text("Okay")))
            }
            
            Button(action: makeVideoCall) {
                Image(systemName: "video.fill")
                    .frame(width: 40, height: 40)
                    .foregroundColor(.red)
            }
            .alert(isPresented: $showAlert) { () -> Alert in
                Alert(title: Text("In Developent"), message: Text("Wait for the next update in order to make video call"), dismissButton: .destructive(Text("Okay")))
            }
        }
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .padding(.top, 10)
        .padding(.bottom, 10)
    }
    
    func sendMessage() {
        self.showAlert = true
    }
    
    func makeVideoCall() {
        self.showAlert = true
    }
}

struct ContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCellView()
    }
}
