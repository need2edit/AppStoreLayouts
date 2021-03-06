//
//  AppCollectionCell.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

class AppCollectionCell: UICollectionViewCell, GridCell, MetadataLabelCell {

    var imageCornerRadius: CGFloat = 16.0
    var imageBorderWidth: CGFloat = 0.5
    var imageBorderColor: UIColor = .darkGray
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var metadataLabel: UILabel!
    
    // FIXME: Make this unaware of the model
    var app: App? {
        didSet {
            configureCell()
        }
    }
    
    private func configureCell() {
        
        guard let app = app else { return }
        
        imageView.image = #imageLiteral(resourceName: "App Single Entry")
        imageView.layer.cornerRadius = imageCornerRadius
        imageView.layer.borderWidth = imageBorderWidth
        imageView.layer.borderColor = imageBorderColor.cgColor
        imageView.clipsToBounds = true
        
        // FIXME: Make this unaware of the model
        
        titleLabel.text = app.name
        subtitleLabel.text = app.category
        metadataLabel.text = app.price
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
    }

}


// MARK: - Reusable
extension AppCollectionCell: Reusable {
    static var reuseIdentifierForCell: String {
        return "AppCollectionCell"
    }
}
