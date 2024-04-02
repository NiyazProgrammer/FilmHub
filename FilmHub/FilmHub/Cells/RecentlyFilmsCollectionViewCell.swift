import UIKit

class RecentlyFilmsCollectionViewCell: UICollectionViewCell {

    private lazy var filmImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "testFilm"))
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius =  20
        image.clipsToBounds = true
        return image
    }()

    private lazy var starsStackView: UIStackView = {
        let stackView = StarsBuilder().addStar().addStar().buildStars(withStarsSize: 10)
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(starsStackView)
        contentView.addSubview(filmImage)
        
        setupLayout()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupLayout() {
        filmImage.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.leading.equalTo(contentView.snp.leading).offset(10)
            make.trailing.equalTo(contentView.snp.trailing).offset(-10)
            make.width.equalTo(60)
            make.height.equalTo(110)
        }
        starsStackView.snp.makeConstraints { make in
            make.top.equalTo(filmImage.snp.bottom).offset(15)
            make.bottom.equalTo(contentView.snp.bottom).offset(-15)
            make.leading.equalTo(contentView.snp.leading).offset(10)
        }
    }
}

extension RecentlyFilmsCollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
