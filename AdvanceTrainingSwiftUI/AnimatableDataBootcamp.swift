//
//  AnimatableDataBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/02.
//

import SwiftUI

struct AnimatableDataBootcamp: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: animate ? 50 : 0)
            .frame(width: 300, height: 300)
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                    animate.toggle()
                }
            }
    }
}

struct AnimatableDataBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimatableDataBootcamp()
    }
}
