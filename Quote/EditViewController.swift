//
//  EditViewController.swift
//  Quote
//
//  Created by User on 11/12/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    var quote: Quote?
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = quote?.text
        textField.text = quote?.author
    }
    
    @IBAction func save(_ sender: Any) {
    }
}
