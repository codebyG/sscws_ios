//
//  Book.swift
//  BookManager
//
//  Created by Myeongun Kim on 2018. 2. 2..
//  Copyright © 2018년 Myeongun Kim. All rights reserved.
//

import Foundation

class Book{
    
    var name  = ""
    var genre = ""
    var author = ""
    
    func bookPrint(){
        
        print("name : \(name)")
        print("genre : \(genre)")
        print("Author : \(author)")
    }
}
