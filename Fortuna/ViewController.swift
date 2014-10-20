//
//  ViewController.swift
//  Fortuna
//
//  Created by Bin Huang on 10/17/14.
//  Copyright (c) 2014 Bin Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let delegate = UIApplication.sharedApplication().delegate as AppDelegate

    @IBOutlet weak var quotationTextView: UITextView!

    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        displayRandomQuote()
    }

    func displayRandomQuote() {
        let quotes = arc4random_uniform(2) == 0 ? delegate.positiveQuotes : delegate.negativeQuotes

        quotationTextView.text = quotes[Int(arc4random_uniform(UInt32(quotes.endIndex)))]
    }
}

