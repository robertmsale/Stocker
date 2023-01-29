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
    @State var navPath: NavigationPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $navPath) {
            LoginScreen(navPath: $navPath)
                .navigationTitle("Sign in")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: User.self) { user in
                    ScanQRView(navPath: $navPath, user: user)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
