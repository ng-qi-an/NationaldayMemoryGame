//
//  Button.swift
//  Nationalday
//
//  Created by Ng Qi An on 29/7/23.
//

import Foundation
import SwiftUI

enum Variant {
    case filled, gray
}

struct CustomButton: View {
    var text: String
    var width: CGFloat? = nil
    var font: Font = .body
    var variant: Variant = .gray
    var body: some View {
        return Text(text)
            .frame(maxWidth: width)
            .padding()
            .background(variant == .filled ? .red : Color(red: 0.9, green: 0.9, blue: 0.9))
            .cornerRadius(10)
            .font(font)
            .foregroundColor(variant == .filled ? .white : .black)
        
    }
}
