//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Árthur Ken Aramaki Mota on 29/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import Foundation

let base_url    = "http://api.openweathermap.org/data/2.5/weather?"
let latitude    = "lat="
let longitude   = "&lon="
let app_id      = "&appid="
let api_key     = "08cd03ed852a29dbd8934db7fe077052"

typealias DownloadComplete = () -> ()

let current_weather_url = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=08cd03ed852a29dbd8934db7fe077052"//"\(base_url)\(latitude)35\(longitude)139\(app_id)\(api_key)"

//

let forecast_url = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=08cd03ed852a29dbd8934db7fe077052"
