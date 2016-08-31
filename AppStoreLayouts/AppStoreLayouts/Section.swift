//
//  Section.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

/// Data structure for managing collection of items. May have optional title.
///
/// Useful for Table and Collection Views
class Section: NSObject, SimpleDataSource {
    let title: String?
    let items: [DataItem]
    
    init(title: String, items: [DataItem]) {
        self.title = title
        self.items = items
    }
}


import UIKit

// MARK: - UICollectionViewDataSource
extension Section: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppCollectionCell", for: indexPath) as! AppCollectionCell
        cell.app = items[indexPath.row] as? App
        return cell
    }
}
