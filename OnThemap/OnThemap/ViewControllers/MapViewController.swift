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
        setupConstraints()
    }
    
    private func setupConstraints() {
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height / 8),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 8),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}
