//
//  SimpleDataSource.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import Foundation


/// A basic data source with no sections.
protocol SimpleDataSource {
    var items: [DataItem] { get }
}


/// A more complex data source composed of `SimpleDataSource`.
protocol ComplexDataSource {
    var sections: [SimpleDataSource] { get set }
}
