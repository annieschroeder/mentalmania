//
//  hintViewController.swift
//  Mental Mania
//
//  Created by Teacher on 12/4/17.
//  Copyright © 2017 CI 5365. All rights reserved.
//

import UIKit

class HintViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    
    let hints: [String] = [
        "http://www.mathwords.com/s/square_root_rules.htm",
        "http://www.mathwarehouse.com/arithmetic/numbers/list-of-perfect-squares.php",
        "http://www.bubblyprimes.com/cross-cancellation/",
        "http://www.mathwords.com/s/square_root_rules.htm",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "", //list of perfect squares up to 18
        "",
        "",
        ""
    ]
    
    var currentHintIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentHint = hints[currentHintIndex]
        let url = NSURL (string: "\(currentHint)");
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest);
        print(currentHintIndex)
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    
    
    
}
