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

// MARK: UIWebViewDelegate
extension ViewController: UIWebViewDelegate {
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        let string = request.url!
        print(string)
        return true
    }
    
}
