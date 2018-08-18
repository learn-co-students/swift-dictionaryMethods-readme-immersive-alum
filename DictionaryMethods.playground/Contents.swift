let toyStoryFilms = [
    "Toy Story",
    "Toy Story 2",
    "Buzz Lightyear of Star Command: The Adventure Begins",
    "Toy Story 3",
    "Toy Story 4"
]

let starWarsFilms = [
    "Star Wars",
    "The Empire Strikes Back",
    "Star Wars: Episode VI",
    "Star Wars: Episode I",
    "Star Wars: Episode II",
    "Star Wars: Episode III",
    "Star Wars: The Clone Wars",
    "Star Wars: The Force Awakens",
    "Star Wars: Episode VIII",
    "Star Wars: Episode IX"
]

let fastAndFuriousFilms = [
    "The Fast and the Furious",
    "2 Fast 2 Furious",
    "Turbo-Charged Prelud",
    "Tokyo Drift",
    "Fast & Furious",
    "Los Bandoleros",
    "Fast Five",
    "Fast & Furious 6",
    "Furious 7",
    "Fast 8"
]

var movies = [
    "Toy Story": toyStoryFilms,
    "Star Wars": starWarsFilms,
    "The Fast and the Furious": fastAndFuriousFilms
]

let godfatherFilms = [
    "The Godfather",
    "The Godfather Part II",
    "The Godfather Part III"
]

//movies["The Godfather"] = godfatherFilms
let result1 = movies.updateValue(godfatherFilms, forKey: "The Godfather") // If newly added, returns nil
let result2 = movies.updateValue(fastAndFuriousFilms, forKey: "The Fast and the Furious") // If updated, returns the array
print(result1)
print(result2)

if var films = movies["The Fast and the Furious"] {
    films.append("Faster 9")
    films.append("The Fastest 10")
    movies["The Fast and the Furious"] = films
}

if let fastMovies = movies["The Fast and the Furious"] {
    for (index, film) in fastMovies.enumerated() {
        print("\(index + 1). \(film)")
    }
}
movies.removeValue(forKey: "The Fast and the Furious")
if let fasterFilms = movies["The Fast and the Furious"] {
    print("\(fasterFilms)")
} else {
    print("No more!")
}

let planetsAndTheirMoons = [
    "Mercury": 0,
    "Venus": 0,
    "Earth": 1,
    "Mars": 2,
    "Jupiter": 50,
    "Saturn": 53,
    "Uranus": 27,
    "Neptune": 13
]

for planet in planetsAndTheirMoons.keys {
    print(planet)
}


for numberOfMoons in planetsAndTheirMoons.values {
    print(numberOfMoons)
}
