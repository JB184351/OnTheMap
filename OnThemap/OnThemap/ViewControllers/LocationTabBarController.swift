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
        self.view.backgroundColor = .white
        title = NSLocalizedString("On The Map", comment: "The title of the app will be displayed")
        
        let unselectedMapImage = UIImage(named: "icon_mapview-deselected")
        let selectedMapImage = UIImage(named: "icon_mapview-selected")
        
        let unselectedLocationListImage = UIImage(named: "icon_listview-selected")
        let selectedLocationListImage = UIImage(named: "icon_listview-deselected")
        
        let mapViewController = UINavigationController(rootViewController: MapViewController())
        mapViewController.tabBarItem = UITabBarItem(title: nil, image: unselectedMapImage, selectedImage: selectedMapImage)
        
        let locationListTableViewController = UINavigationController(rootViewController: LocationListTableViewController())
        locationListTableViewController.view.backgroundColor = .white
        locationListTableViewController.tabBarItem = UITabBarItem(title: nil, image: unselectedLocationListImage, selectedImage: selectedLocationListImage)
        
        
        self.viewControllers = [mapViewController, locationListTableViewController]
        self.selectedViewController = mapViewController
    }

}
