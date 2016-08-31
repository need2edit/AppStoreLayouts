//
//  StorefrontProvider.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/31/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation


/// Items conforming to `StorefrontProvider` provide a single store front as a data source.
protocol StorefrontProvider {
    var storefront: Storefront { get set }
}


/// Items conforming to `StorefrontInterfaceProviderType` interface items associated with a store front.
@objc public protocol StorefrontInterfaceProviderType {

    @objc optional func showCategories()
    @objc optional func showWishlist()
    
}
