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
        "https://www.mathsisfun.com/tables.html",
        "http://www.mathwarehouse.com/answered-questions/multiples/what-are-the-multiples-of-24-solved.php",
        "http://virtualnerd.com/pre-algebra/factors-fractions-exponents/exponent-properties/negative-zero-exponents/zero-exponent-definition",
        "http://www.coolmath.com/prealgebra/06-properties/08-properties-multiplicative-identity-01",
        "https://www.mathsisfun.com/numbers/nth-root.html",
        "https://www.mathsisfun.com/fractions_division.html",
        "http://teachmath.openschoolnetwork.ca/grade-5/division/distributive-property-for-division/",
        "http://teachmath.openschoolnetwork.ca/grade-5/division/distributive-property-for-division/",
        "http://www.mathwarehouse.com/answered-questions/multiples/what-are-the-multiples-of-27-solved.php",
        "https://www.wikihow.com/Add-Fractions-With-Unlike-Denominators",
        "https://www.success.com/article/15-inspiring-quotes-about-never-giving-up",
        "https://www.mathsisfun.com/simplifying-fractions.html"
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
