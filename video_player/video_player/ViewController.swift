//
//  ViewController.swift
//  video_player
//
//  Created by KimJS on 2023/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func findvideo() {
        guard let path = Bundle.main.path(forResource: "testvideo", ofType: "m4v") else {
            debugPrint("testvideo.m4v not found")
            return
        }
    }


}

