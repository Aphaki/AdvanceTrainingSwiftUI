//
//  CustomTransitionBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/28.
//

import SwiftUI

struct CustomText: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
extension View {
    func customText(color: Color) -> some View {
        self.modifier(CustomText(color: color))
    }
}

struct RotationModifier: ViewModifier {
    
    let degree: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: degree))
            .offset(x: degree == 0 ? 0 : UIScreen.main.bounds.width,
                    y: degree == 0 ? 0 : UIScreen.main.bounds.height)
    }
}

extension AnyTransition {
    static var rotating: AnyTransition {
        modifier(
            active: RotationModifier(degree: 180),
            identity: RotationModifier(degree: 0)
        )
    }
    static func rotating(degree: Double) -> AnyTransition {
        modifier(
            active: RotationModifier(degree: degree),
            identity: RotationModifier(degree: 0)
        )
    }
    
    static var rotateOn: AnyTransition {
        asymmetric(insertion: .rotating, removal: .move(edge: .leading))
    }
}



struct CustomTransitionBootcamp: View {
    
    @State var showText: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            if showText {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .customText(color: .green)
                .transition(.rotateOn)
            }
            Spacer()
            Text("Click")
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showText.toggle()
                    }
                }
        }
    }
}

struct CustomTransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitionBootcamp()
    }
}
