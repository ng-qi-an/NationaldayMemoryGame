//
//  GameView.swift
//  Nationalday
//
//  Created by Ng Qi An on 22/7/23.
//

import SwiftUI

struct GameView: View {
    @State var showInstructions = false
    struct Card {
        var image: String
        var name: String
    }
    @State var randomness = 1
    var totalthings = ["bay 1", "boat 1", "ferris 1", "flag 1", "flamingo 1", "flower 1", "jewel 1", "mermaid 1", "parrot 1", "science 1", "singapore 1", "supertree 1"]
    @State var cards = [["bay 1", "boat 1", "ferris 1"], ["flag 2", "flamingo 1", "flower 1"], ["jewel 1", "mermaid 1", "science 1"]]
    let columns = [
        GridItem(.adaptive(minimum: .infinity), alignment: .leading)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Stepper("\(randomness)x of randomness", value: $randomness)
                LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                    ForEach(cards, id: \.self){ row in
                        HStack {
                            Spacer()
                            ForEach(row, id: \.self){ card in
                                Image(card)
                                    .resizable()
                                    .frame(width: 95, height: 120)
                                
                            }
                            Spacer()
                        }
                    }
                }
                Button {
                    for _ in 0..<randomness {
                        cards = []
                        for _ in 0..<3 {
                            var row: [String] = []
                            var shuffled = totalthings.shuffled()
                            shuffled.indices.forEach { index in
                                if index < 3 {
                                    row.append(shuffled[index])
                                }
                            }
                            print(row)
                            cards.append(row)
                        }
                    }
                } label: {
                    CustomButton(text: "Randomize", width: .infinity, variant: .filled)
                }
            }.sheet(isPresented: $showInstructions){
                VStack {
                    Text("Instructions")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                }.padding()
            }.toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button("Instructions") {
                        showInstructions  = true
                    }
                }
            }
            .navigationTitle("Collage???")
            .toolbarRole(.editor)
            .padding()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
