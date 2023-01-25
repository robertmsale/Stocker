//
//  ContentView.swift
//  Stocker
//
//  Created by Robert Sale on 1/15/23.
//

#if DEBUG
@_exported import HotSwiftUI
#endif
import SwiftUI

struct ContentView: View {
    var body: some View {
        ItemView()
#if DEBUG
        .eraseToAnyView()
#endif
    }
#if DEBUG
    @ObservedObject var iO = injectionObserver
#endif
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
