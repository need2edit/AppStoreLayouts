//
//  Storefront.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation


/**
 
 Complex data source for managing collections of sections and sections' child items.

 
 Storefront
 - Sections
    - Section
        - Section Item
 */

struct Storefront {
    let title: String?
    let sections: [Section]
}
