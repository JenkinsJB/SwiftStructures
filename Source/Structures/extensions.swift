//
//  extensions.swift
//  SwiftStructures
//
//  Created by Wayne Bishop on 8/20/14.
//  Copyright (c) 2014 Arbutus Software Inc. All rights reserved.
//

import Foundation


extension String {
  
    
    //compute the length of string
    var length: Int {
        return count(self)
    }
    
    //returns characters of a string up to a specified index
    func substringToIndex(to: Int) -> String {
        return self.substringToIndex(advance(self.startIndex, to))
    }
    
    
    //return a character at a specific index
    func stringAtIndex(position: Int) -> String {
        return String(Array(self)[position])
    }

    
    //insert a string at a specified index
    func insertSubstring(string:String, index:Int) -> String {
        return  prefix(self,index) + string + suffix(self,count(self)-index)
    }

    
    //convert a string into a character array
    func characters() ->Array<Character>! {
        return Array(self)
    }

    
    //reverse string order
    func reverse() -> String! {
                
        /*
        notes: While this operation would normally be done 'in-place', there are limited
        functions for manipulating native Swift strings. Even there is a
        native Array.reverse() method, this has been added as an example interview question.
        */

        
        //convert to array
        var characters = self.characters()
        
        var findex: Int = 0
        var bindex: Int = characters.count - 1
        
        
        while findex < bindex {
            
            //swap positions - inout parameters
            swap(&characters[findex], &characters[bindex])
            
            //update values
            findex += 1
            bindex -= 1
            
            
        } //end while
        
        
        return String(characters)
        
    }

    
}





extension Int {
    
    //iterates the closure body a specified number of times
	func times(closure:(Int)->Void) {
		for i in 0...self {
			closure(i)
		}
	}
	
}