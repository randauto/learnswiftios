//: Playground - noun: a place where people can play


var myMovieArray = ["Le Quoc Tuan", "Nguyen Cuong", "Tran Quoc Khanh"]
myMovieArray.count
myMovieArray.append("Tran Thi Phuong")

myMovieArray[0]
myMovieArray[1] = "Le Thi Met"

print(myMovieArray[1])

myMovieArray.count
myMovieArray.remove(at: 1)
myMovieArray.index(of: "Le Quoc Tuan")
myMovieArray.count
myMovieArray.isEmpty
myMovieArray.sort()

var myDic = ["phim":"nguoi dau kho", "sach":"doi la niem vui"]
myDic["phim"] = "Nguoi Dau Kho"
print(myDic["phim"])

print(myDic)


