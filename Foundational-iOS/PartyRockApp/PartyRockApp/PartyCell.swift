//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Árthur Ken Aramaki Mota on 07/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    // MARK: - Outlet
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    
    }


    func updateUI(partyRock: PartyRock) {
        
        videoTitle.text = partyRock.videoTitle

        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            
            do {
                
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
                
            } catch {
                
                // handle the error
                
            }
            
        }
        
    }
    
    
    

}
