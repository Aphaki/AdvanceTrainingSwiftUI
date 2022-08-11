//
//  PreferenceKeyBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/05.
//

import SwiftUI

struct SecondPreferenceKeyBootcamp: View {
    var body: some View {
        VStack {
            Text("이름: ")
            Text("나이: ")
            Text("연락처: ")
        }
    }
}

struct PreferenceKeyBootcamp: View {
    
    @State var mainText: String = /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/
    
    var body: some View {
        Text(mainText)
        
    }
}

struct PreferenceKeyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyBootcamp()
    }
}
