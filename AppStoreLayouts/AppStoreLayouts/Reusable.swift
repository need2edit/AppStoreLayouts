//
//  Reusable.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

protocol Reusable {
    static var reuseIdentifierForCell: String { get }
}

extension UICollectionView {
    func register<T>(_ cellClass: T.Type?) where T: Reusable, T: AnyObject {
        self.register(cellClass, forCellWithReuseIdentifier: cellClass!.reuseIdentifierForCell)
    }
}
