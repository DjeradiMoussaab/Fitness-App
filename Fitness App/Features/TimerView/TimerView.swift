//
//  TimerView.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 13/7/2023.
//
import SwiftUI

struct TimerView: View {
    var body: some View {
        VStack {
            Spacer()
            DropdownView()
            Spacer()
            Button(action:{}) {
                Text("Create")                            .font(.system(size: 26, weight: .medium))
            }.padding(.bottom)
            Button(action:{}) {
                Text("Skip")                            .font(.system(size: 26, weight: .medium))
            }
        }.navigationTitle("Set Timer")
    }
}



struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TimerView()
        }.previewDevice("iPhone 14 Pro Max")
    }
}
