//
//  NavbarViewController.swift
//  FilmHub
//
//  Created by Нияз Ризванов on 25.03.2024.
//

import UIKit

final class NavBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    func configure() {
        view.backgroundColor = Resources.Colors.BaseView.background
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: UIColor(.white)
        ]
    }
}
