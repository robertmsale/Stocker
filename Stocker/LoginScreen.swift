//
//  LoginScreen.swift
//  Stocker
//
//  Created by Robert Sale on 1/19/23.
//

import SwiftUI
#if DEBUG
@_exported import HotSwiftUI
#endif

struct LoginScreen: View {
    @State var email: String = ""
    @State var pass: String = ""
    @State var rememberMe: Bool = false
    var body: some View {
        VStack(spacing: 16) {
            Text("Stocker Pro").font(.system(size: 48))
            Image(systemName: "shippingbox.fill").font(.system(size: 128))
            Spacer()
            Form {
                TextField("Email", text: $email)
                TextField("Password", text: $pass)
                Toggle("Remember me", isOn: $rememberMe)
                HStack {
                    Spacer()
                    Button("Sign in") {
                        
                    }
                }
            }.formStyle(GroupedFormStyle())
        }
#if DEBUG
        .eraseToAnyView()
#endif
    }
#if DEBUG
    @ObservedObject var iO = injectionObserver
#endif
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
