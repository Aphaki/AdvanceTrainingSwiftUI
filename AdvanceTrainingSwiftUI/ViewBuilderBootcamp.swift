//
//  ViewBuilderBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/04.
//

import SwiftUI

struct NameCard<Content: View>: View {
    let name: String
    let contact: String
    let email: String
    let foregroundColor: Color
    let content: Content
    
    init(name: String, contact: String, email: String, foregroundColor: Color, @ViewBuilder content: () -> Content) {
        self.name = name
        self.contact = contact
        self.email = email
        self.foregroundColor = foregroundColor
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
                .frame(height: 50)
            Text(name)
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .frame(maxWidth: .infinity)
                .frame(height: 2)
            Text("Contact: " + contact)
            Text("Email: " + email.description)
        }
        .foregroundColor(foregroundColor)
        .padding()
        .background(
            content
        )
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
        .padding(.horizontal, 10)
    }
}

struct ViewBuilderBootcamp: View {
    
    var body: some View {
        VStack(spacing: 40) {
            NameCard(name: "Maru Kim", contact: "010 - 1234 - 5678", email: "MaruKim@email.com", foregroundColor: .white) {
                Image("DisneyCastle")
                    .resizable()
                    
            }
            
            NameCard(name: "Mari Kim", contact: "010 - 5678 - 1234", email: "MariKim@email.com", foregroundColor: .black) {
                Image(systemName: "applelogo")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .opacity(0.1)
            }
        }
    }
}

struct ViewBuilderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderBootcamp()
    }
}
