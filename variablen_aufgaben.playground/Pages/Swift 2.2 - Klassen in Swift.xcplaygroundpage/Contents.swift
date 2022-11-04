

import Foundation

class Person {
    var firstname: String
    var surname: String
    var age: Int
    
    init(firstname: String, surname: String, age: Int) {
        self.firstname = firstname
        self.surname = surname
        self.age = age
    }
    func hasBirthday(){
        age += 1
    }
    func description() -> String{
        var person = "\(self.firstname) \(self.surname) \(self.age)"
        return person
        
    }
    
}

var person = Person(firstname: "Max", surname: "Mustermann", age: 18)
var person1 = Person(firstname: "Michael", surname: "Hornung", age: 42)
person.hasBirthday()


print("Happy Birthday \(person.description()) \n\(person1.description())")

print("$$$$$$$$$$$$$$$$$$$")
print("Aufgabe 1 erledigt")
print("$$$$$$$$$$$$$$$$$$$")
print("-------------------------------")

class BankAccount{
    
    let accountHolder: Person
    let accountNumber: Int
    var bankCode: String
    var balance: Double
    var limit: Double
    
    init(accountHolder: Person,accountNumber: Int, bankCode: String) {
        self.accountHolder = accountHolder
        self.accountNumber = accountNumber
        self.bankCode = bankCode
        self.balance = 0
        
        if (accountHolder.age < 18){
            self.limit = 0
        }else {
            self.limit = 2000
        }
            
    }
    
   public func payIn(income: Double){
        balance += income
       print(balance)
    }
    func payOut(outcome: Double){
        if (balance - outcome ) >= limit{
            balance -= outcome
            
            print(balance)
            
        }
    }
    func bankTransfer(transfer: Double, konto2:BankAccount){
       balance -= transfer
        konto2.balance += transfer
        print(konto2.balance)
    }
}
var MichaelsKonto = BankAccount(accountHolder: person1, accountNumber: 67234627364, bankCode: "263746231879")
MichaelsKonto.payIn(income: 10000)
MichaelsKonto.payOut(outcome: 1400)
var JenkmansKonto = BankAccount(accountHolder: person, accountNumber: 866383, bankCode: "20984866")
MichaelsKonto.bankTransfer(transfer: 2300, konto2: JenkmansKonto)
print(MichaelsKonto.balance)
