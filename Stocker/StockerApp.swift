//
//  StockerApp.swift
//  Stocker
//
//  Created by Robert Sale on 1/15/23.
//

import SwiftUI

@main
struct StockerApp: App {
#if DEBUG
init() {
    var injectionBundlePath = "/Application/InjectionIII.app/Contents/Resources"
//        #if targetEnvironment(macCatalyst)
//        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
//        #elseif os(iOS)
    injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
//        #endif
    Bundle(path: injectionBundlePath)?.load()
}
#endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
