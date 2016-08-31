//
//  ScrollingTableRowCell.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

class ScrollingTableRowCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    var section: Section!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib = UINib(nibName: "AppCollectionCell", bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: AppCollectionCell.reuseIdentifierForCell)
    }
    
}



// MARK: - Reusable
extension ScrollingTableRowCell: Reusable {
    static var reuseIdentifierForCell: String {
        return "ScrollingTableRowCell"
    }
}
