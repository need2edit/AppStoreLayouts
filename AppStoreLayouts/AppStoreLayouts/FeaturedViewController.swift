//
//  ViewController.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController {
    
    
    // MARK: Properties
    @IBOutlet var tableView: UITableView!
    
    let storefront: Storefront = {
    
        let sections = createSections(withTitles: [
            "A Summer You Won't Forget",
            "VMA Your Way",
            "Play That Beat"
            ])
        
        return Storefront(title: "Featured", sections: sections)
    
    }()

}

// MARK: - View Controller Life Cycle
extension FeaturedViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Rows
        let nib = UINib(nibName: "ScrollingTableRowCell", bundle: Bundle.main)
        self.tableView.register(nib, forCellReuseIdentifier: "ScrollingTableRowCell")
    }
}

// MARK: - UITableViewDataSource
extension FeaturedViewController: UITableViewDataSource {
    
    private func section(for indexPath: IndexPath) -> Section {
        return storefront.sections[indexPath.section]
    }
    
    private func rowItem(for indexPath: IndexPath) -> SectionItem {
        return section(for: indexPath).items[indexPath.row]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storefront.sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ScrollingTableRowCell.reuseIdentifierForCell, for: indexPath) as! ScrollingTableRowCell
        configure(object: section(for: indexPath), cell: cell)
        return cell
    }
    
}


extension FeaturedViewController {
    func configure(object: Section, cell: ScrollingTableRowCell) {
        cell.section = object
        cell.collectionView.dataSource = object
    }
}

// MARK: - UITableViewDelegate
extension FeaturedViewController: UITableViewDelegate {
    
}


extension Section: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppCollectionCell", for: indexPath) as! AppCollectionCell
        cell.app = items[indexPath.row] as! App
        return cell
    }
}

