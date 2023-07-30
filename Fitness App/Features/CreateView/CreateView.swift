//
//  CreateView.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 10/7/2023.
//

import SwiftUI

struct CreateView: View {
    @State private var isActive = false
    var body: some View {
        ScrollView {
            VStack {
                DropdownView()
                DropdownView()
                DropdownView()
                DropdownView()
                Spacer()
                NavigationLink(destination: TimerView(), isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }) {
                        Text("Next")
                            .font(.system(size: 26, weight: .medium))
                    }
                }
            }.navigationBarTitle("Create")
        }
    }
}



struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateView()
        }.previewDevice("iPhone 14 Pro Max")
    }
}
