//
//  TrimBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/01.
//

import SwiftUI

struct TrimBootcamp: View {
    var body: some View {
        HStack {
            VStack {
                Rectangle()
                    .trim(from: 0.3, to: 1)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0.4, to: 1)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0.5, to: 1)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0.6, to: 1)
                    .frame(width: 130, height: 130)
            }
            VStack {
                Rectangle()
                    .trim(from: 0, to: 0.3)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0, to: 0.4)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0, to: 0.5)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .trim(from: 0, to: 0.6)
                    .frame(width: 130, height: 130)
            }
        }
    }
}

struct TrimBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TrimBootcamp()
    }
}
