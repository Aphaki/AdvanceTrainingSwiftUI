//
//  MatchedGeometryEffectBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/31.
//

import SwiftUI

struct MatchedGeometryEffectBootcamp: View {
    
    @Namespace private var namespace
    @State var loadingIndex: Int = 0
    let timer = Timer.publish(every: 0.3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        HStack {
            VStack(spacing: 0) {
                Text("W")
                if loadingIndex == 0 {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 10, height: 10)
                    .matchedGeometryEffect(id: "BlueBall", in: namespace)
                }
            }
            VStack(spacing: 0) {
                Text("A")
                if loadingIndex == 1 {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 10, height: 10)
                    .matchedGeometryEffect(id: "BlueBall", in: namespace)
                }
            }
            VStack(spacing: 0) {
                Text("V")
                if loadingIndex == 2 {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 10, height: 10)
                    .matchedGeometryEffect(id: "BlueBall", in: namespace)
                }
            }
            VStack(spacing: 0) {
                Text("V")
                if loadingIndex == 3 {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 10, height: 10)
                    .matchedGeometryEffect(id: "BlueBall", in: namespace)
                }
            }
            VStack(spacing: 0) {
                Text("E")
                if loadingIndex == 4 {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 10, height: 10)
                    .matchedGeometryEffect(id: "BlueBall", in: namespace)
                }
            }
        }
        .onReceive(timer) { _ in
            withAnimation {
                loadingIndex += 1
                if loadingIndex > 4 {
                    loadingIndex = 0
                }
            }
        }
    }
}

struct MatchedGeometryEffectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectBootcamp()
    }
}
