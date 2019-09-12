//
//  TaskScheduler.swift
//  task-scheduler-sample
//
//  Created by 佐藤大樹 on 2019/09/09.
//  Copyright © 2019 佐藤大樹. All rights reserved.
//

import UIKit
import WebKit

class TaskScheduler: UIViewController {
    
    @IBOutlet weak var webKitView: WKWebView!
    
    let target = "https://google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webKitView = WKWebView(frame:CGRect(x:0, y:0, width:self.view.bounds.size.width, height:self.view.bounds.size.height))
        
        let url = URL(string: target)
        let request = URLRequest(url: url!)
        webKitView.load(request)
        
        self.view.addSubview(webKitView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
