//
//  ViewController.swift
//  mvc-test
//
//  Created by Árthur Ken Aramaki Mota on 26/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(first: "John", last: "Hancock")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        fullName.text = person.fullName
     
    }

    @IBAction func renamePressed(_ sender: UIButton) {
        
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
        
    }

}

