//
//  ScanQRView.swift
//  Stocker
//
//  Created by Robert Sale on 1/19/23.
//

import SwiftUI
#if DEBUG
@_exported import HotSwiftUI
#endif

struct ScanQRView: View {
    var body: some View {
        VStack {
            Text("Scan QR code").font(.title2).padding(.top, 32)
            ZStack {
                Image("mockQRCam")
                    .resizable()
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
#if DEBUG
        .eraseToAnyView()
#endif
    }
#if DEBUG
    @ObservedObject var iO = injectionObserver
#endif
}

struct ScanQRView_Previews: PreviewProvider {
    static var previews: some View {
        ScanQRView()
    }
}
