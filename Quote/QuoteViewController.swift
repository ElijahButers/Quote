//
//  ViewController.swift
//  Quote
//
//  Created by User on 11/7/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController, EditViewControllerDelegate {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    
    let modelController = ModelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUIWithQuote(quote: modelController.quote)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editViewController = segue.destination as? EditViewController {
            editViewController.quote = modelController.quote
            editViewController.delegate = self
        }
    }
    
    func quoteWasSaved(quote: Quote) {
        
        modelController.quote = quote
        updateUIWithQuote(quote: quote)
    }
    
    func updateUIWithQuote(quote: Quote) {
        quoteTextLabel.text = quote.text
        quoteAuthorLabel.text = quote.author
    }


}

