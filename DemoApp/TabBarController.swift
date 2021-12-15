//
//  TabBarController.swift
//  DemoApp
//
//  Created by Yusa Dogru on 24.11.2021.
//

import UIKit
import CardTabBar

final class TabBarController: CardTabBarController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupUI()
    }

    // MARK: - UI
    private func setupUI() {
        tabBar.tintColor = .TabBar.title
        tabBar.backgroundColor = .background
        tabBar.barTintColor = .Navigation.background
        tabBar.indicatorColor = .TabBar.itemBackground
    }
    
    private func setupViewController() {
        viewControllers = [homeTab, bookTab, editTab, notificationTab, moreTab]
    }

    // MARK: - TabItems
    lazy var homeTab: UIViewController = {
        let homeTabItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home"), selectedImage: nil)
        let homeNavTab = NavigationController(rootViewController: ListViewController())
        homeNavTab.tabBarItem = homeTabItem
        return homeNavTab
    }()

    lazy var bookTab: UIViewController = {
        let searchTabItem = UITabBarItem(title: "Search", image: UIImage(named: "ic_search"), selectedImage: nil)
        let navController = NavigationController(rootViewController: LabelViewController(title: "Search"))
        navController.tabBarItem = searchTabItem
        return navController
    }()

    lazy var editTab: UIViewController = {
        let randomTabItem = UITabBarItem(title: "Profile", image: UIImage(named: "ic_profile"), selectedImage: nil)
        let navController = NavigationController(rootViewController: LabelViewController(title: "Profile"))
        navController.tabBarItem = randomTabItem
        return navController
    }()

    lazy var notificationTab: UIViewController = {
        let commentTabItem = UITabBarItem(title: "Notice", image: UIImage(named: "ic_notifi"), selectedImage: nil)
        let navController = NavigationController(rootViewController: LabelViewController(title: "Notice"))
        navController.tabBarItem = commentTabItem
        return navController
    }()

    lazy var moreTab: UIViewController = {
        let commentTabItem = UITabBarItem(title: "More", image: UIImage(named: "ic_settings"), selectedImage: nil)
        let navController = NavigationController(rootViewController: LabelViewController(title: "More"))
        navController.tabBarItem = commentTabItem
        return navController
    }()
}

