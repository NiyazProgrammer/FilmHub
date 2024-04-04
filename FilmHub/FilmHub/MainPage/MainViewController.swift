//
//  MainViewController.swift
//  FilmHub
//
//  Created by Нияз Ризванов on 25.03.2024.
//

import UIKit

class MainViewController: BaseViewController {

    private let mainView: MainView = .init(frame: .zero)
    private let viewModel: MainViewModel

    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
    }

    func setupNavigationBar() {
        navigationItem.title = "Главная"
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }

}
