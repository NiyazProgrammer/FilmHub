//
//  BaseViewController.swift
//  FilmHub
//
//  Created by Нияз Ризванов on 25.03.2024.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    func configure() {
        view.backgroundColor = Resources.Colors.BaseView.background
    }
}
