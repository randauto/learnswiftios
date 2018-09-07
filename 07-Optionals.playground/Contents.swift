//: Playground - noun: a place where people can play

var myName : String = "Le Quoc Tuan"
myName.uppercased()
print(myName)

var yourName : String?
yourName?.uppercased()


var myAge = "43"
// var myResult = Int(myAge)! * 5

if let myNumber = Int(myAge) {
    var myResult = myNumber * 6
} else {
    print("Error cast number")
}

