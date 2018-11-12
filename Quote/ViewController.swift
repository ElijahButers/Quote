//
//  ViewController.swift
//  Quote
//
//  Created by User on 11/7/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    
    let modelController = ModelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quote = modelController.quote
        quoteTextLabel.text = quote.text
        quoteAuthorLabel.text = quote.author
        
    }


}

