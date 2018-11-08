//
//  Quote.swift
//  Quote
//
//  Created by User on 11/8/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

class Quote: NSObject, NSCoding {
    
    let text: String
    let author: String
    
    init(text: String, author: String) {
        self.text = text
        self.author = author
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObject(forKey: Keys.text.rawValue) as! String
        author = aDecoder.decodeObject(forKey: Keys.text.rawValue) as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(text, forKey: Keys.text.rawValue)
        aCoder.encode(author, forKey: Keys.text.rawValue)
    }
    
    enum Keys: String {
        case text = "text"
        case author = "author"
    }
}

class Model {
    
    let quote = Quote(text: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe.", author: "Albert Einstein")
}
