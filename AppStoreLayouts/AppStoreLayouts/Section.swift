//
//  Section.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

/// Data structure for managing collection of items. May have optional title.
class Section: NSObject {
    let title: String?
    let items: [SectionItem]
    
    init(title: String, items: [SectionItem]) {
        self.title = title
        self.items = items
    }
}
