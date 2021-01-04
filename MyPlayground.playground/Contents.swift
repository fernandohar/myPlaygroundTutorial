import Foundation

struct MovieInfo{
    var name: String
    var numTomatos: Int?
    var comments: String?
}

var allMovies : [MovieInfo] = []

allMovies.append(MovieInfo(name: "Avatar", numTomatos: 82, comments: "jaw-dropping visual effects"))
allMovies.append(MovieInfo(name: "Forrest Gump", numTomatos: 71, comments: "layers and nuances and ironies"))
allMovies.append(MovieInfo(name: "ZOMBIE BRO", numTomatos: nil, comments: nil))
allMovies.append(MovieInfo(name: "THE DEVIL'S LIGHT", numTomatos: nil, comments: nil))
allMovies.append(MovieInfo(name: "BREACH", numTomatos: 20, comments: "There's nothing new here"))

for movieInfo in allMovies{
    print ("Name: \(movieInfo.name) - Rating:\(movieInfo.numTomatos ?? 0)  ")
}

print ("\n \n Sort By Name")
let nameSortedMovies = allMovies.sorted { (left, right) -> Bool in
    return left.name < right.name
}

for movieInfo in nameSortedMovies{
    print ("Name: \(movieInfo.name) - Rating:\(movieInfo.numTomatos ?? 0)  ")
}

print ("\n \n Sort By Rating")
let ratingSortedMovies = allMovies.sorted { (left, right) -> Bool in
    return left.numTomatos ?? 0 > right.numTomatos ?? 0
}
for movieInfo in ratingSortedMovies{
    print ("Name: \(movieInfo.name) - Rating:\(movieInfo.numTomatos ?? 0)  ")
}

print ("\n \n UnRated First, by Name")
let unRatedFirst = allMovies.sorted { (left, right) -> Bool in
    if left.numTomatos == nil && right.numTomatos == nil{
        return left.name < right.name
    }else if left.numTomatos == nil{
        return true  //unrated are listed first
    }else{
        return left.name < right.name
    }
}
for movieInfo in unRatedFirst{
    print ("Name: \(movieInfo.name) - Rating:\(movieInfo.numTomatos ?? 0)  ")
}

