//
//  StorefrontProvider.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/31/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

protocol StorefrontProvider {
    var storefront: Storefront { get set }
}


@objc public protocol StorefrontInterfaceProviderType {

    @objc optional func showCategories()
    @objc optional func showWishlist()
    
}
