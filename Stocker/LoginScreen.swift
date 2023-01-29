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
    @State var emailInvalid: Bool = false
    @State var loginBad: Bool = false
    
    enum Field: Int, CaseIterable {
        case email, password
    }
    
    @FocusState var focusedField: Field?
    
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack(spacing: 16) {
            Text("Stocker Pro").font(.system(size: 48))
            Image(systemName: "shippingbox.fill").font(.system(size: 128))
            Spacer()
            Form {
                TextField("Email", text: $email)
                    .focused($focusedField, equals: .email)
                    .textContentType(.password)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $pass)
                    .focused($focusedField, equals: .password)
                    .textContentType(.password)
                Toggle("Remember me", isOn: $rememberMe)
                HStack {
                    Spacer()
                    Button("Sign in") {
                        navPath.append(User())
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button("Done") {
                        focusedField = nil
                    }
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

//struct LoginScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginScreen()
//    }
//}
