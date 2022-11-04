

import Foundation

struct User {
    var userId: Int
    var isLoggedIn: Bool
    var emailAdress: String
    var password: String
    var age: Int
    var phone: Phone
}

struct Phone {
    var make: String
    var model: String
    var color: String
    
}
var phone: Phone = Phone (make: "iPhone", model: "11", color: "blue")
var phone1: Phone = Phone(make: "iPhone", model: "12", color: "red")
var user: User = User(userId: 0815, isLoggedIn: true, emailAdress: "test.test@tester.com", password: "11880", age: 42, phone: phone)
var user1: User = User(userId: 9911, isLoggedIn: true, emailAdress: "test1.test@tester.com", password: "12880", age: 25, phone: phone1)

print("Phone: \n \(phone)\n\n User: \n \(user.phone)\(user.age)\n\n User1: \n \(user1)\n\n")

print(user.age)
user.age = 43
print(user.age)
user1.userId = 1234
print(user1.userId)


