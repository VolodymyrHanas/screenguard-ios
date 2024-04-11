//
//  ViewController.swift
//  ScreenGuard-Example
//
//  Created by Volodymyr Hanas on 11.04.2024.
//

import UIKit
import ScreenGuard

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let regularView = UIView()
        regularView.translatesAutoresizingMaskIntoConstraints = false
        regularView.backgroundColor = .red
        regularView.layer.cornerRadius = 16


        let viewWithSensitiveInfo = UIView()
        viewWithSensitiveInfo.translatesAutoresizingMaskIntoConstraints = false
        viewWithSensitiveInfo.backgroundColor = .red
        viewWithSensitiveInfo.layer.cornerRadius = 16
        viewWithSensitiveInfo.setScreenshotsDisabled(true)

        view.addSubview(regularView)
        view.addSubview(viewWithSensitiveInfo)

        NSLayoutConstraint.activate([
            regularView.widthAnchor.constraint(equalToConstant: 300),
            regularView.heightAnchor.constraint(equalToConstant: 300),
            regularView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            regularView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),

            viewWithSensitiveInfo.widthAnchor.constraint(equalToConstant: 300),
            viewWithSensitiveInfo.heightAnchor.constraint(equalToConstant: 300),
            viewWithSensitiveInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewWithSensitiveInfo.topAnchor.constraint(equalTo: regularView.bottomAnchor, constant: 12)
        ])
    }
}

