//
//  ProfileView.swift
//  FilmHub
//
//  Created by Нияз Ризванов on 25.03.2024.
//

import UIKit

class ProfileView: UIView {

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .clear
        scrollView.showsVerticalScrollIndicator = false
        scrollView.backgroundColor = .clear
        return scrollView
    }()

    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .clear
        return contentView
    }()

    private lazy var headerImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "testFilm2"))

        image.backgroundColor = .gray
        return image
    }()

    private lazy var avatarImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "testDefaultAvatar"))
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 40
        image.clipsToBounds = true
        return image
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Steve Job"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.sizeToFit()
        return label
    }()

    private lazy var followers: UILabel = {
        let label = UILabel()
        label.text = "500 followers"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.sizeToFit()
        return label
    }()

    private lazy var followings: UILabel = {
        let label = UILabel()
        label.text = "100 followings"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.sizeToFit()
        return label
    }()

    private lazy var followersAndFollowingsSV: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followers, followings])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()

    private lazy var totalFilmsSV: UIStackView = {
        let stackView = MainUsersInfoSVBuilder()
            .addNumberInfo(number: 450)
            .addTitleInfo(title: Resources.Strings.ProfileScreen.totalFilmsForSV)
            .build()
        return stackView
    }()

    private lazy var willBeFilmsSV: UIStackView = {
        let stackView = MainUsersInfoSVBuilder()
            .addNumberInfo(number: 4)
            .addTitleInfo(title: Resources.Strings.ProfileScreen.willBeFilmsForSV)
            .build()
        return stackView
    }()

    private lazy var reviewFilmsSV: UIStackView = {
        let stackView = MainUsersInfoSVBuilder()
            .addNumberInfo(number: 30)
            .addTitleInfo(title: Resources.Strings.ProfileScreen.reviewFilmsForSV)
            .build()
        return stackView
    }()

    private lazy var statistikMainSV: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [totalFilmsSV, willBeFilmsSV, reviewFilmsSV])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()

    private lazy var favoriteFilmsLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.ProfileScreen.favoriteFilmsLabel
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.sizeToFit()
        return label
    }()

    private lazy var headerFavoriteFilmsSV: UIStackView = {
        let action = UIAction { _ in
            // MARK:  Переход на любимы фильмы
        }
        let buttonSeeAll = SeeAllButton(type: .custom, primaryAction: action)
        let stackView = UIStackView(arrangedSubviews: [favoriteFilmsLabel, buttonSeeAll])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    lazy var cardsFavoriteFilmsSV: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()

    private lazy var recentlyFilmsLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.ProfileScreen.recentlyFilmsLabel
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.sizeToFit()
        return label
    }()

    private lazy var separatorView: UIView = {
        let separator = UIView()
        separator.backgroundColor = .lightGray
        return separator
    }()

    private lazy var headerRecentlyFilmsSV: UIStackView = {
        let action = UIAction { _ in
            // MARK:  Переход на недавние фильмы
        }
        let buttonSeeAll = SeeAllButton(type: .custom, primaryAction: action)
        let stackView = UIStackView(arrangedSubviews: [recentlyFilmsLabel,buttonSeeAll])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    private lazy var recentlyReviewsLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.ProfileScreen.recentlyReviewsLabel
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.sizeToFit()
        return label
    }()

    private lazy var headerRecentlyReviewsSV: UIStackView = {
        let action = UIAction { _ in
            // MARK:  Переход на недавние фильмы
        }
        let buttonSeeAll = SeeAllButton(type: .custom, primaryAction: action)
        let stackView = UIStackView(arrangedSubviews: [recentlyReviewsLabel,buttonSeeAll])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()

    lazy var recentlyFilmsColectionView: UICollectionView = {
        var wight = ((UIScreen.main.bounds.size.width) / 4) - 18

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 120, height: 180)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isPagingEnabled = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.register(
            RecentlyFilmsCollectionViewCell.self,
            forCellWithReuseIdentifier: RecentlyFilmsCollectionViewCell.reuseIdentifier)
        return collectionView
    }()
}
