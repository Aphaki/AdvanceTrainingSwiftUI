//
//  UnderlinedBootcamp.swift
//  AdvanceTrainingSwiftUI
//
//  Created by Sy Lee on 2022/08/09.
//

import SwiftUI

extension String {
    
    var underLined: AttributedString {
        var attributedString = AttributedString(self)
        attributedString.underlineStyle = .single
        return attributedString
    }
    
    var redUnderLine: AttributedString {
        var attributedString = AttributedString(self)
        attributedString.underlineStyle = Text.LineStyle(pattern: .solid, color: .red)
        return attributedString
    }
}

struct BasicUnderlineBootcamp: View {
    
    let text = "Hello " + "Universe".underLined
    
    var body: some View {
        Text(text)
    }
}

struct UnderlinedBootcamp: View {
    
    var attributedString: AttributedString = "Hello " + "World".redUnderLine + " And " + "universe".underLined
    
    var body: some View {
        Text(attributedString)
            
    }
}

struct UnderlinedBootcampBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UnderlinedBootcamp()
    }
}
