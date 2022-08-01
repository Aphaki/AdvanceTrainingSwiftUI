//
//  ArkShape.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/01.
//

import SwiftUI

struct Clover: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            // Top Leaf
            path.move(to: CGPoint(x: rect.midX, y: rect.maxY * 0.25))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.maxY * 0.25),
                        radius: rect.height * 0.2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: false)
            // Left Leaf
            path.move(to: CGPoint(x: rect.maxX * 0.3, y: rect.maxY * 0.55))
            path.addArc(center: CGPoint(x: rect.maxX * 0.3, y: rect.maxY * 0.55),
                        radius: rect.height * 0.2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: false)
            // Right Leaf
            path.move(to: CGPoint(x: rect.maxX * 0.7, y: rect.maxY * 0.55))
            path.addArc(center: CGPoint(x: rect.maxX * 0.7, y: rect.maxY * 0.55),
                        radius: rect.height * 0.2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: false)
            // Bottom Base
            path.move(to: CGPoint(x: rect.maxX * 0.35, y: rect.maxY))
            path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY),
                              control: CGPoint(x: rect.midX, y: rect.maxY))
            path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.65, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX * 0.65, y: rect.maxY))
            
            // Fill Center
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.midX / 5,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360), clockwise: false)

        }
    }
}

struct ArkShape: View {
    var body: some View {
        
        VStack {
            Clover()
                .frame(width: 100, height: 100)
        }
    }
}

struct ArkShape_Previews: PreviewProvider {
    static var previews: some View {
        ArkShape()
    }
}
