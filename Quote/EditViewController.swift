//
//  EditViewController.swift
//  Quote
//
//  Created by User on 11/12/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

protocol EditViewControllerDelegate: class {
    func quoteWasSaved(quote: Quote)
}

class EditViewController: UIViewController {
    
    var quote: Quote?
    var delegate: EditViewControllerDelegate?
    
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
