//
//  MainTabBarController.swift
//  NewsRx
//
//  Created by dunice on 07.07.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let newsVC = NewsViewController()
    let profileVC = ProfileViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        newsVC.tabBarItem = UITabBarItem(title: "News", image: UIImage(systemName: "line.3.horizontal"), tag: 0)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 1)
        viewControllers = [newsVC, profileVC]
    }
}
