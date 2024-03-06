//
//  ContentView.swift
//  MyMusic
//
//  Created by 河田佳之 on 2024/03/04.
//

import SwiftUI

struct ContentView: View {
    
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            // 背景画像を指定する
            BackgroundView(imageName: "background")
            
            HStack {
                // シンバルボタン
                // マルチトレイリングクロージャー
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    // 画像を表示
                    Image("cymbal")
                }
                
                // ギターボタン
                // トレイリングクロージャー
                Button(action: {
                    soundPlayer.guitarPlay()
                }) {
                    // 画像を表示
                    Image("guitar")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
