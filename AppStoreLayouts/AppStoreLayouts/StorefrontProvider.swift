//
//  StorefrontProvider.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/31/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation
import UIKit


/// Items conforming to `StorefrontProvider` provide a single store front as a data source.
protocol StorefrontProvider {
    var storefront: Storefront { get set }
}


/// Items conforming to `StorefrontInterfaceProviderType` interface items associated with a store front.
@objc public protocol StorefrontInterfaceProviderType {

    @objc optional func showCategories()
    @objc optional func showWishlist()
    
}

extension StorefrontInterfaceProviderType where Self: WishlistProvider, Self: CategorySelectionDelegate, Self: UIViewController {
    
    func addWishlistInterface() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "List"), style: .plain, target: self, action: #selector(StorefrontInterfaceProviderType.showWishlist))
    }
    
    func addCategoryInterface() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Categories", style: .plain, target: self, action: #selector(StorefrontInterfaceProviderType.showCategories))
    }
    
}
