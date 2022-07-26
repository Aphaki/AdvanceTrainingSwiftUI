//
//  ViewModifierByApple.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/26.
//

import SwiftUI

struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(Color.blue)
    }
}

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}

struct ViewModifierByApple: View {
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "bus")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Downtown Bus")
//                .font(.caption2)
//                .padding(10)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 15)
//                        .stroke(lineWidth: 1)
//                )
//                .foregroundColor(Color.blue)
                .modifier(BorderedCaption())
//                .borderedCaption()
        }
    }
}

struct ViewModifierByApple_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierByApple()
    }
}
