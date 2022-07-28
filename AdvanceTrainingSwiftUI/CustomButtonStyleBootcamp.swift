//
//  CustomButtonStyle.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/26.
//

import SwiftUI

extension View {
    func pinkButtonStyle(pressedColor: Color = .blue) -> some View {
        buttonStyle(PinkButtonStyle(pressedColor: pressedColor))
    }
}

struct PinkButtonStyle: ButtonStyle {
    
    let pressedColor: Color
    
    init(pressedColor: Color = .blue) {
        self.pressedColor = pressedColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .padding()
            .background(configuration.isPressed ? pressedColor : .pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct CustomButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            Button {} label: {
                Text("Button1")
            }
            .pinkButtonStyle(pressedColor: .green)
            Button {} label: {
                Text("Button2")
            }
            .pinkButtonStyle()
            Button {} label: {
                Text("Button3")
            }
            .buttonStyle(PinkButtonStyle())
        }
    }
}

struct CustomButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonStyleBootcamp()
    }
}
