//
//  ProfileViewController.swift
//  FilmHub
//
//  Created by Нияз Ризванов on 25.03.2024.
//

import UIKit

class ProfileViewController: BaseViewController {

    private let profileView: ProfileView = .init(frame: .zero)
    private let viewModel: ProfileViewModel

    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()

    }

    func setupNavigationBar() {
        navigationItem.title = "Профиль"
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }

}
