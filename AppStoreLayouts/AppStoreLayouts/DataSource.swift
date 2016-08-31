//
//  SimpleDataSource.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation

protocol SimpleDataSource {
    var items: [Any] { get set }
}

protocol ComplexDataSource {
    var items: [SimpleDataSource] { get set }
}
