//
//  ContentView.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 28/5/2023.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer().frame(height: proxy.size.height/20)
                Text("Fitness App")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                        Text("Create a Challenge")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }.buttonStyle(PrimaryButtonStyle())
                    .padding(.horizontal, 20)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            .background(
                Image("landingbg")
                    .resizable()
                    .overlay(Color.black.opacity(0.5))
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
            )
        }

    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 8")
        LandingView().previewDevice("iPhone 14 Pro Max")
    }
}
