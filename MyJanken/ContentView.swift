//
//  ContentView.swift
//  MyJanken
//
//  Created by KEN NAKAI on 2023/11/12.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0

    var body: some View {
        VStack {
            if jankenNumber == 0 {
                Text("これから")
                
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Text("グー")
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Text("チョキ")
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Text("パー")
            }
            
            Button(action: {
                print("タップされたよ！")
                jankenNumber = Int.random(in: 1...3)
            }, label: {
                Text("じゃんけんをする！")
            })
        }
    }
}

#Preview {
    ContentView()
}
