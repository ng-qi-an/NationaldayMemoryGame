//
//  ContentView.swift
//  Nationalday
//
//  Created by Ng Qi An on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showInstructions = true
//    enum Variant {
//        case filled, gray
//    }
//    struct CustomButton: View {
//        var text: String
//        var width: CGFloat? = nil
//        var font: Font = .body
//        var variant: Variant = .gray
//        var body: some View {
//            return Text(text)
//                .frame(maxWidth: width)
//                .padding()
//                .background(variant == .filled ? .red : Color(red: 0.9, green: 0.9, blue: 0.9))
//                .cornerRadius(10)
//                .font(font)
//                .foregroundColor(variant == .filled ? .white : .black)
//            
//        }
//    }
    var body: some View {
        VStack {
            NavigationStack {
                VStack {
                    Text("🇸🇬")
                        .font(.system(size: 200))
                    Text("National day Hackathon")
                        .font(.title)
                        .bold()
                    NavigationLink {
                        GameView()
                    } label: {
                        CustomButton(text: "Enter", width: .infinity, variant: .filled)
                    }.padding(.top, 10)
                }
                .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
