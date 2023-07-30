//
//  DropdownView.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 10/7/2023.
//


import SwiftUI

struct DropdownView: View {
    var body: some View {
        VStack {
            HStack {
                Text("subtitle")
                    .font(.system(size: 26, weight: .medium))
                Spacer()
            }
            Button(action: {}) {
                HStack {
                    Text ("Pushups")
                        .font(.system(size: 26, weight: .medium))
                    Spacer()
                    Image(systemName: "arrow.down.circle")
                        .font(.system(size: 26, weight: .medium))

                }
            }.buttonStyle(PrimaryButtonStyle(fillColor: .primaryButton))
        }.padding(20)
    }
}


struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DropdownView()
        }.environment(\.colorScheme, .dark)
        
        NavigationView {
            DropdownView()
        }.environment(\.colorScheme, .light)
    }
}
