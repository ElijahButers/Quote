//
//  Quote.swift
//  Quote
//
//  Created by User on 11/8/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

class Quote: NSObject {
    
    let text: String
    let author: String
    
    init(text: String, author: String) {
        self.text = text
        self.author = author
    }
}
