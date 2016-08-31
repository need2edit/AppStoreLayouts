//
//  App.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

/// A data structure mirroring essential info found on the App Store.
struct App {
    let name: String
    let seller: String
    let price: String?
    
    let category: String
}

// MARK: - Make Available to Generic Data Sources
extension App: DataItem { }
