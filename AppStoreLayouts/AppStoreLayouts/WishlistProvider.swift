//
//  WishlistProvider.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/31/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit


protocol WishlistProvider { }

extension StorefrontInterfaceProviderType where Self: WishlistProvider, Self: CategorySelectionDelegate, Self: UIViewController {
    
    func addWishlistInterface() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "List"), style: .plain, target: self, action: #selector(StorefrontInterfaceProviderType.showWishlist))
    }
    
    func addCategoryInterface() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Categories", style: .plain, target: self, action: #selector(StorefrontInterfaceProviderType.showCategories))
    }
    
}
