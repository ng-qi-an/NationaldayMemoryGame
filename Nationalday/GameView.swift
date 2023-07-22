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
    @State var cards = [["lol", "hi", "another"]]
    let columns = [
        GridItem(.adaptive(minimum: .infinity), alignment: .leading)
    ]
    var body: some View {
        NavigationStack {
            VStack {
                LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                    ForEach(cards, id: \.self){ row in
                        HStack {
                            Spacer()
                            ForEach(row, id: \.self){ card in
                                Rectangle()
                                    .frame(width: 95, height: 120)
                                    .background(.gray)
                            }
                            Spacer()
                        }
                    }
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
                    
                    Button("Settings") {
                        print("Pressed")
                    }
                }
            }
            .navigationTitle("Memory game")
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
