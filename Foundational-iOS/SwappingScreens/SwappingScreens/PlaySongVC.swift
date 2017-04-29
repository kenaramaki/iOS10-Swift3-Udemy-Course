//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Árthur Ken Aramaki Mota on 29/04/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    // MARK: - Properties
    private var _selectedSong:String!
    
    var selectedSong:String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var songTitleLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
        
    
    }


}
