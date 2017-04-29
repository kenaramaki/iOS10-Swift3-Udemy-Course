//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Árthur Ken Aramaki Mota on 29/04/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        
    }
    
    // MARK: - Actions
    @IBAction func backBtnPressed(_ sender: UIButton) {
    
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func load3rdScreenPressed(_ sender: UIButton) {
        
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    
    }

    // MARK: - Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                
                destination.selectedSong = song
    
            }
            
        }
        
    }

}
