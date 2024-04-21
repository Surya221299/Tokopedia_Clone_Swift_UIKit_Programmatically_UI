//
//  TabController.swift
//  TokopediaClone
//
//  Created by Bamantara S on 04/02/24.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tabBarSetup()
        
    }
    
}

extension TabController {
    
    func tabBarSetup() {
        self.tabBar()
        
        // Do any additional setup after loading the view.
        self.tabBar.tintColor = UIColor(named: "bg_primary")
        self.tabBar.unselectedItemTintColor = .black
        self.tabBar.backgroundColor = UIColor(named: "bg_tab_bar_light")
        
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: self.tabBar.frame.size.width, height: 0.5))
        
        lineView.backgroundColor = UIColor(named: "bg_tab_bar_top_border_light")
        self.tabBar.addSubview(lineView)
        
        self.delegate = self
        tabBar.isTranslucent = false
    }
}

extension TabController {
    
    func tabBar () {
        let home = UINavigationController(rootViewController: Home())
        let feed = UINavigationController(rootViewController: Feed())
        let officialStore = UINavigationController(rootViewController: OfficialStore())
        let wishList = UINavigationController(rootViewController: WishList())
        let transaksi = UINavigationController(rootViewController: Transaksi())

        home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "ic_home_inactive"),selectedImage: UIImage(named: "ic_home_active")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        feed.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(named: "ic_feed_inactive"),selectedImage: UIImage(named: "ic_feed_active")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        officialStore.tabBarItem = UITabBarItem(title: "Official Store", image: UIImage(named: "ic_official_store_inactive"),selectedImage: UIImage(named: "ic_official_store_active")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        wishList.tabBarItem = UITabBarItem(title: "Wishlist", image: UIImage(named: "ic_wishlist_inactive"),selectedImage: UIImage(named: "ic_wishlist_active")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        transaksi.tabBarItem = UITabBarItem(title: "Transaksi", image: UIImage(named: "ic_transaksi_inactive"),selectedImage: UIImage(named: "ic_transaksi_active")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal))
        
        self.viewControllers = [home, feed, officialStore, wishList, transaksi]
        
    }
}

extension TabController {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if selectedIndex == 1 {
            self.tabBar.tintColor = UIColor(named: "bg_primary")
            self.tabBar.unselectedItemTintColor = .white
            self.tabBar.backgroundColor = UIColor(named: "bg_feed_background")
            self.tabBar.barTintColor = UIColor(named: "bg_feed_background")
        } else {
            self.tabBar.tintColor = UIColor(named: "bg_primary")
            self.tabBar.unselectedItemTintColor = .black
            self.tabBar.backgroundColor = UIColor(named: "bg_tab_bar_light")
            self.tabBar.barTintColor = .white
        }
    }
}
