import Foundation

class MockScreenViewModel {

    weak var viewController: MockScreenViewController?

    init(viewController: MockScreenViewController) {
        self.viewController = viewController
    }

    func buttonTapped() {
        // Обработка нажатия на кнопку
        // Например, переход к экрану деталей фильма
        _ = MovieScreenViewModel(viewController: MovieScreenViewController())
        let movieDetailsViewController = MovieScreenViewController()
        viewController?.navigationController?.pushViewController(movieDetailsViewController, animated: true)
    }
}
