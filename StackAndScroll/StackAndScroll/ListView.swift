//
//  ListView.swift
//  StackAndScroll
//
//  Created by Deepak Carpenter on 16/07/20.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            ForEach(ListModel.dummyData(), id: \.self) { listObject in
                StackView(cellData: listObject)
            }
        }
        .navigationBarTitle("Top Football Clubs")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
