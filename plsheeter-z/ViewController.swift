//
//  ViewController.swift
//  plsheeter-z
//
//  Created by 坂東昌哉 on 2017/12/01.
//  Copyright © 2017年 unionsep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plsheeter: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.plsheeter.delegate = self
        let plsheeterSite = URL(string: "https://pl-sheeter.heteml.net/")!
        self.plsheeter.loadRequest(URLRequest(url: plsheeterSite))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UIWebViewDelegate {
   
   func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {

        if request.url?.scheme != "data" {
            print("####### 33333")
            return true
        } else {
            print("######### 44444444")
            let requestString: String? = request.url?.absoluteString
            let params = requestString?.components(separatedBy: "data:image/png;base64,")
            print(params![0])
//            let decodedData = Data(fromBase64String: params?[1])
//            let image = UIImage(data: decodedData)
//            UIImageWriteToSavedPhotosAlbum(image, self, nil, nil)
            return false
        }
    
    }
    
}
