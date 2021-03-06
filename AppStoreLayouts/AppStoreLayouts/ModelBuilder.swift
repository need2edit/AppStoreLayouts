//
//  ModelBuilder.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

/// Creates Row of 16 Apps with the same name, price, and category.
///
/// - returns: A section with 16 apps.
func createRowOfApps(withCount count: Int) -> [App] {
    
    var items: [App] = []
    for dollar in 0...count {
        
        let isEven = dollar % 2 == 0
        let price: String? = isEven ? "$ \(dollar).99" : nil
        let name: String = isEven ? "Day One Diary + Journal + Notes" : "Flipagram"
        items.append(App(name: name, seller: "Flipagram, Inc.", price: price, category: "Photo & Video"))
    }
    
    return items
}

/// Creates Demo Section.
///
/// - returns: A section with 16 apps.
func createSection(title: String, withNumberOfApps numberOfApps: Int = 16) -> Section {

    // There are 16 apps in an iPhone row
    let apps = createRowOfApps(withCount: numberOfApps)
    
    return Section(title: title, items: apps)
}

/// Create Demo Sections
///
/// - returns: A set of sections with 16 apps each.
func createSections(withTitles titles: [String]) -> [Section] {
    return titles.map { createSection(title: $0) }
}



/// Create Demo Storefronts
///
/// - returns: A set of store fronts with sections and items.
func createStorefronts() -> [Storefront] {
    
    let sections = createSections(withTitles: ["A Summer You Won't Forget", "VMA Your Way", "Play That Beat", "Another Section", "Another Section", "Another Section", "Another Section"])
    
    let featured = Storefront(title: "Featured", sections: sections)
    
    let topCharts = Storefront(title: "Top Charts", sections: sections)
    
    let explore = Storefront(title: "Explore", sections: sections)
    
    let search = Storefront(title: "Search", sections: sections)
    
    let updates = Storefront(title: "Updates", sections: sections)
    
    return [featured, topCharts, explore, search, updates]
    
    
}
