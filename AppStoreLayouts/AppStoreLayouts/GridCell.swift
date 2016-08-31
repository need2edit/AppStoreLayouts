//
//  GridCell.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

protocol TitleLabelCell {
    var titleLabel: UILabel! { get set }
}

protocol SubtitleLabelCell {
    var subtitleLabel: UILabel! { get set }
}

protocol MetadataLabelCell {
    
    /// An optional secondary or tertiary label. 
    ///
    /// Example: a price label below a title and description labels.
    var metadataLabel: UILabel! { get set }
}

protocol ImageCell {
    var imageView: UIImageView! { get set }
}

protocol GridCell: TitleLabelCell, SubtitleLabelCell, ImageCell, Reusable { }

protocol ImageOnlyCell: ImageCell, Reusable {}
