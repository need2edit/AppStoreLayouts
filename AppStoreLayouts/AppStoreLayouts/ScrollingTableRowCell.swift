//
//  ScrollingTableRowCell.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

class ScrollingTableRowCell: UITableViewCell, TitleLabelCell {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var collectionView: UICollectionView!
    
    var section: Section!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib = UINib(nibName: "AppCollectionCell", bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: AppCollectionCell.reuseIdentifierForCell)
        collectionView.contentInset = .init(top: 0, left: 12.0, bottom: 0, right: 12.0)
    }
    
}



// MARK: - Reusable
extension ScrollingTableRowCell: Reusable {
    static var reuseIdentifierForCell: String {
        return "ScrollingTableRowCell"
    }
}
