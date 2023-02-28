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
        setupTabBars()
    }
    
    private func setupTabBars() {
        let unselectedMapImage = UIImage(named: "icon_mapview-deselected")
        let selectedMapImage = UIImage(named: "icon_mapview-selected")
        
        let unselectedLocationListImage = UIImage(named: "icon_listview-selected")
        let selectedLocationListImage = UIImage(named: "icon_listview-deselected")
        
        let mapViewController = MapViewController()
        mapViewController.view.backgroundColor = .orange
        mapViewController.tabBarItem = UITabBarItem(title: nil, image: unselectedMapImage, selectedImage: selectedMapImage)
        
        let locationListTableViewController = LocationTabBarController()
        locationListTableViewController.view.backgroundColor = .blue
        locationListTableViewController.tabBarItem = UITabBarItem(title: nil, image: unselectedLocationListImage, selectedImage: selectedLocationListImage)
        
        
        self.viewControllers = [mapViewController, locationListTableViewController]
        self.selectedViewController = mapViewController
    }

}
