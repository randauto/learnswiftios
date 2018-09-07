//: Playground - noun: a place where people can play


var str = "Hello, playground"

class User {
    var name = ""
    var age = 0
    var favoriteMovie = ""
    var favoriteWeather = ""
    var isDeveloper = false
    
    func showUser() {
        print(name)
        print(age)
        print(favoriteMovie)
        print(favoriteWeather)
        print(isDeveloper)
    }
}

var user  =  User()
user.age = 30
user.name = "Le Quoc Tuan"
user.isDeveloper = true
user.showUser()

