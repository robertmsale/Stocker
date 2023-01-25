//
//  ItemView.swift
//  Stocker
//
//  Created by Robert Sale on 1/19/23.
//

import SwiftUI
#if DEBUG
@_exported import HotSwiftUI
#endif

struct ItemView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "lightbulb.2.fill")
                    .font(.system(size: 64))
                    .padding(16)
                    .background(Circle().fill(Color.gray))
                VStack(alignment: .leading) {
                    Text("Item: Light Bulb A19")
                    Text("Location:")
                    Text("  • Warehouse #3")
                    Text("  • Aisle #7")
                    Text("  • Shelf #5")
                    Text("Quantity In Stock: 20")
                }
                Spacer()
            }
            .padding(32)
            Spacer()
            Form {
                HStack {
                    Spacer()
                    Button("Take item") {}.font(.title)
                    Spacer()
                }
            }
        }
#if DEBUG
        .eraseToAnyView()
#endif
    }
#if DEBUG
    @ObservedObject var iO = injectionObserver
#endif
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
