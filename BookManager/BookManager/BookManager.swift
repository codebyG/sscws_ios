//
//  BookManager.swift
//  BookManager
//
//  Created by Myeongun Kim on 2018. 2. 2..
//  Copyright © 2018년 Myeongun Kim. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]() //mutable array
    
    func addBook(_ obj:Book){
        bookList += [obj]
        
    }
    
    func showAllBook() -> String {
        var strTemp = ""
        for bookTemp in bookList{
            strTemp  += "Name : \(bookTemp.name) \n"
            strTemp  += "Genre : \(bookTemp.genre) \n"
            strTemp  += "Author : \(bookTemp.author) \n"
             strTemp  +=  "--------------------------------\n"
        }
        return strTemp
    }
    
    func countBook() -> Int{
        return bookList.count
    }
    
    func findBook(_ name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList{
            if bookTemp.name == name {
                strTemp  += "Name : \(bookTemp.name) \n"
                strTemp  += "Genre : \(bookTemp.genre) \n"
                strTemp  += "Author : \(bookTemp.author) \n"
                return strTemp
            }
        }
        return nil
    }
    
    func remove(_ name: String) {
        for bookTemp in bookList{
            
            if bookTemp.name == name{
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                
                
            }
        }
    }
}
