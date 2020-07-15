//
//  ScrollCellView.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 16/07/20.
//

import SwiftUI

struct ScrollCellView: View {
    var cellData: ListModel = ListModel(id: 0, title: "Manchester United F.C.", subtitle: "Ole Gunnar Solskjær Trending", image: "manu", opacity: 1.0)
    
    var body: some View {
        VStack(spacing: 10) {
            Image(cellData.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(5)
                .clipped()
                .shadow(color: .gray, radius: 5.0, x: 2, y: 2)
                .scaleEffect()
            Text(cellData.title)
                .font(.headline)
                .foregroundColor(Color.black)
                .clipped()
                .shadow(color: .gray, radius: 5.0, x: 2, y: 2)
                .scaleEffect()
            Text("Head Coach: \n\(cellData.subtitle)")
                .font(.body)
                .foregroundColor(Color.black)
                .clipped()
                .shadow(color: .gray, radius: 5.0, x: 2, y: 2)
                .scaleEffect()
                .multilineTextAlignment(.center)
            Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                .opacity(cellData.opacity)
        }
    }
}

struct ScrollCellView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollCellView()
    }
}
