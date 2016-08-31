//
//  ViewController.swift
//  AppStoreLayouts
//
//  Created by Jake Young on 8/30/16.
//  Copyright © 2016 Jake Young. All rights reserved.
//

import UIKit

class FeaturedViewController: UIViewController, StorefrontProvider, StorefrontInterfaceProviderType {
    
    // MARK: Properties
    @IBOutlet var tableView: UITableView!
    
    lazy var storefront: Storefront = {
    
        let sections = createSections(withTitles:
            ["A Summer You Won't Forget",
             "VMA Your Way",
             "Play That Beat",
             "Another Section",
             "Another Section",
             "Another Section",
             "Another Section"
            ]
        )
        
        return Storefront(title: "Featured", sections: sections)
    
    }()

}

// MARK: - View Controller Life Cycle
extension FeaturedViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Rows
        let nib = UINib(nibName: "ScrollingTableRowCell", bundle: Bundle.main)
        tableView.register(nib, forCellReuseIdentifier: "ScrollingTableRowCell")
        
        tableView.contentInset = .zero
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addWishlistInterface()
        addCategoryInterface()
        navigationItem.title = storefront.title
    }
}

// MARK: - UITableViewDataSource
extension FeaturedViewController: UITableViewDataSource {
    
    private func section(for indexPath: IndexPath) -> Section {
        return storefront.sections[indexPath.row]
    }
    
    private func rowItem(for indexPath: IndexPath) -> DataItem {
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
        cell.titleLabel.text = object.title
        cell.section = object
        cell.collectionView.dataSource = object
    }
}

// MARK: - UITableViewDelegate
extension FeaturedViewController: UITableViewDelegate {
    
}

extension FeaturedViewController {
    
    func showWishlist() {
        
        let table = UITableViewController(style: .plain)
        let nav = UINavigationController(rootViewController: table)
        table.navigationItem.title = "Wishlist"
        self.present(nav, animated: true) {
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
                nav.dismiss(animated: true, completion: nil)
            })

        }
        
    }
    
    func showCategories() {
        
        let table = UITableViewController(style: .plain)
        let nav = UINavigationController(rootViewController: table)
        table.navigationItem.title = "Categories"
        self.present(nav, animated: true) {
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
                nav.dismiss(animated: true, completion: nil)
            })
        }
        
    }
    
}

// MARK: - WishlistProvider
extension FeaturedViewController: WishlistProvider {
    
}

extension FeaturedViewController: CategorySelectionDelegate {
    
}
