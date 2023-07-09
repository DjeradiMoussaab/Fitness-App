//
//  PrimaryButton.swift
//  Fitness App
//
//  Created by Moussaab Djeradi on 9/7/2023.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    var fillColor: Color = .darkPrimaryButtonColor
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(
            configuration: configuration,
            fillColor: fillColor
        )
    }
    
    struct PrimaryButton: View {
        let configuration: Configuration
        let fillColor: Color
        var body: some View {
            return configuration.label
                .padding(20)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            fillColor
                        )
                )
        }
    }
}

struct PrimaryButtonStyle_Preview: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("This is a preview")
        }.buttonStyle(PrimaryButtonStyle())
    }
}
