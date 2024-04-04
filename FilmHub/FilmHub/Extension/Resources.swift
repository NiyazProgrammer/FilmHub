//
//  Resources.swift
//  FilmHub
//
import UIKit

enum Resources {
    enum Colors {

        enum TabBar {
            static let active = UIColor(hexString: "#EA9696")
            static let inactive: UIColor = .gray
        }

        enum BaseView {
            static let background = UIColor(hexString: "#1F1D36")
        }
    }

    enum Images {
        enum TabBar {
            static let homePage = UIImage(named: "homePage")
            static let profilePage = UIImage(named: "profilePage")
        }
    }

    enum Strings {
        enum TabBar {
            static var mainScreen = "Главная"
            static let profileScreen = "Профиль"
        }
    }
}
