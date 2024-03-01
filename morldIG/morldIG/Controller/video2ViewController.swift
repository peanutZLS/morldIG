//
//  video2ViewController.swift
//  morldIG
//
//  Created by 郭家宇 on 2024/2/29.
//

import UIKit
import WebKit
class video2ViewController: UIViewController {

    @IBOutlet var webVuew: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // 確保 webView 不為 nil
        guard let webView = webVuew else {
            print("webView is nil")
            return
        }

        // 確保 URL 對象不為 nil
        guard let url = URL(string: "https://www.youtube.com/shorts/6fv75fQGU5I") else {
            print("URL is nil")
            return
        }

        // 載入 YouTube 影片
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
