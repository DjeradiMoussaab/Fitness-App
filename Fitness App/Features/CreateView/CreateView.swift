//
//  CreateView.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 10/7/2023.
//

import SwiftUI

struct CreateView: View {
    @StateObject var viewModel = CreateViewModel()
    @State private var isActive = false
    
    var dropdownList: some View {
        ForEach(viewModel.dropdowns.indices, id: \.self) { index in
            DropdownView(viewModel: $viewModel.dropdowns[index])
        }
    }
    var body: some View {
        ScrollView {
            VStack {
                dropdownList
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
