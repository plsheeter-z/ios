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
        print("########## 3333333333")
        let plsheeterSite = URL(string: "https://pl-sheeter.heteml.net/")!
        plsheeter.loadRequest(URLRequest(url: plsheeterSite))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UIWebViewDelegate {
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print("########## 2222222")
        return true
    }
    
}
