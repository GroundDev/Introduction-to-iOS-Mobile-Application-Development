//
//  ViewController.swift
//  video_player
//
//  Created by KimJS on 2023/01/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "testvideo", ofType: "mp4") else {
            debugPrint("testvideo.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }


}

