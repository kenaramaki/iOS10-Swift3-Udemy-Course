//
//  Person.swift
//  mvc-test
//
//  Created by Árthur Ken Aramaki Mota on 26/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        }
        set {
            _firstName = newValue 
        }
        
    }
    
    var lastName: String{
        return _lastName
    }
    
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }
    
    
    var fullName: String{
        return "\(_firstName!) \(_lastName!)"
    }
    
}
