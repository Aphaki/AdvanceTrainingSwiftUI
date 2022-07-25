//
//  ContentView.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/25.
//

import SwiftUI

struct CustomTextModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal, 10)
    }
}

extension View {
    func applyCustomTextModifier(color: Color) -> some View {
        modifier(CustomTextModifier(backgroundColor: color))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, world!")
                .modifier(CustomTextModifier(backgroundColor: .pink))
            Text("Hello, universe!")
                .applyCustomTextModifier(color: .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
