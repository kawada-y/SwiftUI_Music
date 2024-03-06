//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 河田佳之 on 2024/03/04.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバル用　音源データ読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    // シンバル変数
    var cymbalPlayer: AVAudioPlayer!
    // シンバル音源再生
    func cymbalPlay() {
        do {
            // シンバル用プレイヤーにシンバル音源を指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバル音源エラー")
        }
    }
    
    // ギター用　音源データ読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    // ギター変数
    var guitarPlayer: AVAudioPlayer!
    // ギター音源再生
    func guitarPlay() {
        do {
            // ギター用プレイヤーにギター音源を指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギター音源エラー")
        }
    }

}
