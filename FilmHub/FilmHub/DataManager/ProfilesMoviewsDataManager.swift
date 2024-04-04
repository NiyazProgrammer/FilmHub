import Foundation
import UIKit

class ProfilesMoviewsDataManager {
    var movies: [Movie] = [
        Movie(
            name: "Гнев человеческий",
            picture: UIImage(named: "testFilm")!,
            rayting: 5.0
        ),
        Movie(
            name: "Холоп",
            picture: UIImage(named: "testFilm")!,
            rayting: 4.5
        ),Movie(
            name: "Механик",
            picture: UIImage(named: "testFilm")!,
            rayting: 3.3
        ),Movie(
            name: "Титаник",
            picture: UIImage(named: "testFilm")!,
            rayting: 2.7
        ),
        Movie(
            name: "Титаник",
            picture: UIImage(named: "testFilm")!,
            rayting: 4.2
        ),
    ]

    var favoriteMovies: [Movie] = [
        Movie(
            name: "Гнев человеческий",
            picture: UIImage(named: "testFilm")!,
            rayting: 5.0
        ),
        Movie(
            name: "Холоп",
            picture: UIImage(named: "testFilm")!,
            rayting: 4.5
        ),Movie(
            name: "Механик",
            picture: UIImage(named: "testFilm")!,
            rayting: 3.3
        ),Movie(
            name: "Титаник",
            picture: UIImage(named: "testFilm2")!,
            rayting: 2.7
        ),
    ]
}
