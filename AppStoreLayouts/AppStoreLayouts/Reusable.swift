//
//  Reusable.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

/// Convenience protocol for dequing UI.
protocol Reusable {
    static var reuseIdentifierForCell: String { get }
}


// MARK: - Convenience Registration Overloads
extension UICollectionView {
    func register<T>(_ cellClass: T.Type?) where T: Reusable, T: AnyObject {
        self.register(cellClass, forCellWithReuseIdentifier: cellClass!.reuseIdentifierForCell)
    }
}
