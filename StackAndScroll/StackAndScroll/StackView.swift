//
//  StackView.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 15/07/20.
//

import SwiftUI

struct StackView: View {
    var cellData: ListModel = ListModel(id: 0, title: "Manchester United F.C.", subtitle: "Ole Gunnar Solskjær Trending", image: "manu", opacity: 1.0)
    var body: some View {
        HStack(content: {
            Image(cellData.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                Text(cellData.title)
                    .font(.headline)
                Text(cellData.subtitle)
                    .font(.subheadline)
            }
            
            Spacer()
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
        })
        .padding(10)
        //.background(Color.purple)
        //.cornerRadius(2)
       
    }
    
    private func buttonAction() {
        
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
