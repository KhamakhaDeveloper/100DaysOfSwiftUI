//
//  ListScrollView.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 16/07/20.
//

import SwiftUI

struct ListScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center) {
                ForEach(ListModel.dummyData(), id: \.self) { listObject in
                    ScrollCellView(cellData: listObject)
                }
                Spacer()
            }
        })
        .navigationBarTitle("Scroll View Sample")
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ListScrollView()
    }
}
