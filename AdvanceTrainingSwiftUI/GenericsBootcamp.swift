//
//  GenericsBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/03.
//

import SwiftUI

struct MyFriendInfo<T> {
    let name : String
    let age: Int
    var contact: T
}

struct FriendCardView<T>: View {
    
    let name: String
    let age: Int
    let contact: T
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("이름: " + name)
            Text("나이: \(age)")
            if let contactStr = contact as? String {
                Text("연락처: " + contactStr)
            }
            if let contactInt = contact as? Int {
                Text("연락처: \(contactInt.description)")
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.pink)
        )
    }
}



struct GenericsBootcamp: View {
    
    var body: some View {
        
        VStack {
            FriendCardView(name: "김우진", age: 28, contact: 34563)
            FriendCardView(name: "정혜지", age: 33, contact: "jhj5544@naver.com")
        }
    }
}

struct GenericsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GenericsBootcamp()
    }
}
