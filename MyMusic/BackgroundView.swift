//
//  BackgroundView.swift
//  MyMusic
//
//  Created by 河田佳之 on 2024/03/04.
//

import SwiftUI

struct BackgroundView: View {
    // 画像ファイル
    let imageName: String
    var body: some View {
        // 背景画像の指定
        Image(imageName)
            // リサイズ
            .resizable()
            // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
            // アスペクト比（縦横比）を維持して短編基準に収まるようにする
            .aspectRatio(contentMode: .fill)
    }
}

#Preview {
    BackgroundView(imageName: "background")
}
