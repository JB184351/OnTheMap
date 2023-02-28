//
//  LocationTabBarController.swift
//  OnThemap
//
//  Created by Justin on 2/24/23.
//

import UIKit

class LocationTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        setupTabBars()
    }
    
    private func setupTabBars() {
        let mapViewController = MapViewController()
        mapViewController.view.backgroundColor = .red
        
        let locationListTableViewController = LocationTabBarController()
        locationListTableViewController.view.backgroundColor = .green
        
        self.viewControllers = [mapViewController, locationListTableViewController]
        self.selectedViewController = mapViewController // Initially display the second view controller
        
        let unselectedMapImage = UIImage(named: "icon_mapview-deselected")
        let selectedMapImage = UIImage(named: "icon_mapview-selected")
        
        let mapTabBarItem = UITabBarItem(title: nil, image: unselectedMapImage, selectedImage: selectedMapImage)
        
        self.tabBarItem = mapTabBarItem
    }

}
