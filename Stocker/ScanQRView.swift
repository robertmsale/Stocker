//
//  ScanQRView.swift
//  Stocker
//
//  Created by Robert Sale on 1/19/23.
//

import SwiftUI
#if DEBUG
@_exported import HotSwiftUI
import CodeScanner
#endif

struct ScanQRView: View {
    @Binding var navPath: NavigationPath
    var user: User
    var body: some View {
        VStack {
//            Text("Scan QR code").font(.title2).padding(.top, 32)
            ZStack {
                CodeScannerView(codeTypes: [.qr], scanMode: .continuous) { res in
                    switch res {
                    case .success(let res): print(res)
                    case .failure(let err): print(err)
                    }
                }
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.5)
                    .mask({
                        ZStack {
                            Rectangle()
                            RoundedRectangle(cornerRadius: 32)
                                .frame(width: 200, height: 200)
                                .blendMode(.destinationOut)
                        }
                    })
                VStack {
                    Spacer()
                }.padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 32))
            .padding(32)
//            Button("Do something else") {
//                
//            }.font(.title)
        }
        .navigationTitle("Scan QR Code")
        .navigationBarTitleDisplayMode(.large)
#if DEBUG
        .eraseToAnyView()
#endif
    }
#if DEBUG
    @ObservedObject var iO = injectionObserver
#endif
}

//struct ScanQRView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScanQRView()
//    }
//}
