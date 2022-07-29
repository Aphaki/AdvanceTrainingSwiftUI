//
//  CustonTransitionBootcamp2.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/07/29.
//

import SwiftUI

extension AnyTransition {
    static var rotatingStar: AnyTransition {
        return modifier(
            active: MyImageStyleViewModifier(degree: 540),
            identity: MyImageStyleViewModifier(degree: 0)
        )
    }
    static var disappearStar: AnyTransition {
        return modifier(active: JustRotatingViewModifier(degree: 180),
                        identity: JustRotatingViewModifier(degree: 0))
    }
    
    static var rotateAndDisappear: AnyTransition {
        asymmetric(insertion: .rotatingStar, removal: .disappearStar)
    }
}


//MARK: - 뷰 모더파이어
extension View {
    func myImgStyle() -> some View {
        modifier(MyImageStyleViewModifier(degree: 0))
    }
}

struct JustRotatingViewModifier: ViewModifier {
    let degree: Double
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.yellow)
            .frame(width: 150, height: 150)
            .rotationEffect(Angle(degrees: degree))
    }
}

struct MyImageStyleViewModifier: ViewModifier {
    
    let degree: Double
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.yellow)
            .frame(width: 150, height: 150)
            .rotationEffect(Angle(degrees: degree))
            .offset(x: degree == 0 ? 0 : UIScreen.main.bounds.width,
                    y: degree == 0 ? 0 : UIScreen.main.bounds.height )
    }
}

//MARK: - 메인 뷰
struct CustonTransitionBootcamp2: View {
    
    @State var showStar: Bool = true
    
    var body: some View {
        VStack {
            Spacer()
            if showStar {
                Image(systemName: "star.fill")
                    .resizable()
                    .myImgStyle()
                    .transition(.rotateAndDisappear)
            }
            Spacer()
            Text("Click")
                .onTapGesture {
                    withAnimation {
                        showStar.toggle()
                    }
                }
        }
    }
}

struct CustonTransitionBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        CustonTransitionBootcamp2()
    }
}
