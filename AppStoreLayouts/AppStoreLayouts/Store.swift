//
//  Store.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation


/// Complex data source representing multiple storefronts.
struct Store {
    let name: String
    let storefronts: [Storefront]
    
    
    /// A demo store with 5 storefronts mimicking the App Store.
    static let demonstration: Store = Store(name: "App Store", storefronts: createStorefronts())
}
