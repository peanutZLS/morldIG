//
//  video1ViewController.swift
//  morldIG
//
//  Created by 郭家宇 on 2024/2/29.
//

import UIKit
import WebKit
class video1ViewController: UIViewController, WKNavigationDelegate {
    

    @IBOutlet var webVuew: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // 確保 webView 不為 nil
        guard let webView = webVuew else {
            print("webView is nil")
            return
        }

        // 確保 URL 對象不為 nil
        guard let url = URL(string: "https://www.youtube.com/shorts/r2lv53fU9Kk") else {
            print("URL is nil")
            return
        }

        // 載入 YouTube 影片
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
