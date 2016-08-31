//
//  GridCell.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit


/// Provides a title label.
protocol TitleLabelCell {
    var titleLabel: UILabel! { get set }
}

/// Provides a title and subtitle label.
protocol SubtitleLabelCell: TitleLabelCell {
    var subtitleLabel: UILabel! { get set }
}

/// Provides an label for additional information.
protocol MetadataLabelCell {
    
    /// An secondary or tertiary label.
    ///
    /// Example: a price label below a title and description labels.
    var metadataLabel: UILabel! { get set }
}

/// Provides an image view.
protocol ImageCell {
    var imageView: UIImageView! { get set }
}

/// A complex reusable UI that provides a title, subtitle, and an image.
protocol GridCell: TitleLabelCell, SubtitleLabelCell, ImageCell, Reusable { }

/// A simple reusable UI that provides a single image.
protocol ImageOnlyCell: ImageCell, Reusable {}
