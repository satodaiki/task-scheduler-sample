//
//  ViewController.swift
//  task-scheduler-sample
//
//  Created by 佐藤大樹 on 2019/09/07.
//  Copyright © 2019 佐藤大樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titBallImage: UIImageView!
    @IBOutlet weak var touchCountStr: UILabel!
    
    var touchCount: Int = 1
    
    @IBAction func titTapAction(_ sender: Any) {
        touchCountStr.text = String(touchCount)
        touchCount = touchCount + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // バンドルした画像ファイルを読み込み
        let image = UIImage(named: "tit_ball")
        
        // Image Viewに画像を設定
        titBallImage.image = image
    }
}

