//
//  MapViewController.swift
//  OnThemap
//
//  Created by Justin on 2/24/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    private var mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(mapView)
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.backButtonTitle = NSLocalizedString("Logout", comment: "Button's logs the user out of the Udacity website")
        
        setupConstraints()
        
        setupNavBar()
    }
    
    private func setupConstraints() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 10),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func setupNavBar() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        let refreshButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(refreshButtonTapped))
        
        navigationItem.rightBarButtonItems = [addButton, refreshButton]
    }
    
    @objc private func addButtonTapped() {
        
    }
    
    @objc private func refreshButtonTapped() {
        
    }

}
