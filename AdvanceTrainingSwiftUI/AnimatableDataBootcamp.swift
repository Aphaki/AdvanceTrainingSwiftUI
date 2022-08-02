//
//  AnimatableDataBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/02.
//

import SwiftUI

struct QuaterCornerRadiusRectangle: Shape {
    
    var cornerRadius: CGFloat
    
    var animatableData: CGFloat {
        get { cornerRadius }
        set { cornerRadius = newValue }
    }
    
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))
            path.addArc(center: CGPoint(x: rect.maxX - cornerRadius,
                                        y: rect.maxY - cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 90),
                        clockwise: false)
            path.move(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY))
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: .zero)
        }
    }
}

struct AnimatableDataBootcamp: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        
        QuaterCornerRadiusRectangle(cornerRadius: animate ? 40 : 0)
            .frame(width: 150, height: 150)
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
