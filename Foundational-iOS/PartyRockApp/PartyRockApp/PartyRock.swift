//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Árthur Ken Aramaki Mota on 07/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL : String!
    private var _videoURL : String!
    private var _videoTitle : String!
    
    // getters
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    //
    
    init(imageURL:String, videoURL:String, videoTitle:String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        
    }
    
}
