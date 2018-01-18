//
//  CodeViewController.swift
//  Meetup UI
//
//  Created by Jeffrey P. Kempster on 1/16/18.
//  Copyright © 2018 Jeffrey P. Kempster. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    
    // Top
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    
    // Center
    @IBOutlet weak var centerButton: UIButton!
    
    // Bottom
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupConstraints()
    }
    
    func setupConstraints() {
        
        let guide = self.view.safeAreaLayoutGuide
        
        // top left
        topLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topLeftButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 16),
            topLeftButton.topAnchor.constraint(equalTo: guide.topAnchor, constant: 16)
        ])
        
        // top right
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topRightButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -16),
            topRightButton.topAnchor.constraint(equalTo: guide.topAnchor, constant: 16)
        ])
        
        // center
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            centerButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            centerButton.centerYAnchor.constraint(equalTo: guide.centerYAnchor)
        ])

        // bottom left
        bottomLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomLeftButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 16),
            bottomLeftButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -16)
        ])
        
        // bottom right
        bottomRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomRightButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -16),
            bottomRightButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -16)
        ])
        
    }


   

}
