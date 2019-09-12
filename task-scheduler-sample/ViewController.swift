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
    @IBOutlet weak var loginTextLabel: UILabel!
    @IBOutlet weak var touchCountLabel: UILabel!
    
    /** ログインに必要な画像タッチカウント */
    let LOGIN_COUNT = 3
    
    /** タッチしたカウント */
    var touchCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // バンドルした画像ファイルを読み込み
        let image = UIImage(named: "tit_ball")
        
        // Image Viewに画像を設定
        titBallImage.image = image
        
        let text = "おっぱいを\(String(LOGIN_COUNT))回タッチしてください。"
        
        loginTextLabel.text = text
    }
    
    @IBAction func titTapAction(_ sender: Any) {
        touchCount = touchCount + 1
        
        // 3回クリックしたらタスクスケジューラ画面へ遷移
        if touchCount == LOGIN_COUNT {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            touchCountLabel.text = String(touchCount)
        }
    }
}

