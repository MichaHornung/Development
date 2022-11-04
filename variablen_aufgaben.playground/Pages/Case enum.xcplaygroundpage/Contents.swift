//: [Previous](@previous)

import Foundation

enum Compass {
    case osten, sueden, westen, norden
    
    func printHimmelsrichtungen() {
        
        switch self {
        case.osten: print("Im Osten, geht die Sonne auf")
        case.sueden: print("Im Süden, nimmt sie ihren Lauf")
        case.westen: print("Im Westen, will sie untergeh'n")
        case.norden: print("Im Norden, ist sie nie zu sehen")
        }
    }
}
var meineHeimat = Compass.sueden
var nichtMeineHeimat = Compass.osten
var schöneGegend = Compass.norden
var kannManLassen = Compass.westen

meineHeimat.printHimmelsrichtungen()
nichtMeineHeimat.printHimmelsrichtungen()
schöneGegend.printHimmelsrichtungen()
kannManLassen.printHimmelsrichtungen()

print("#####################################")

enum Weather {
    case sun, rain, storm
    
    func printweathers(){
        
        switch self {
            
        case.sun: print("Es scheint die Sonne")
        case.rain: print("Heute regnet es")
        case.storm: print("Heute Stürmt es sehr")
        }
    }
}
var sonne = Weather.sun
var regen = Weather.rain
var sturm = Weather.storm

sonne.printweathers()
regen.printweathers()
sturm.printweathers()
print("#####################################")


enum Orakel: CaseIterable{
    case positiv, neutral, negativ
    static func random() -> Orakel{
        return allCases.randomElement()!
    }
}
let positivArray = ["Darauf kannst du dich verlassen","Ja"]
let neutralArray = ["sollte gehen","Vielleicht"]
let negativArray = ["Niemals","No Chance"]

var situation = Orakel.random()

switch situation {
case.positiv: print(positivArray.randomElement()!)
case.neutral: print(neutralArray.randomElement()!)
case.negativ: print(negativArray.randomElement()!)
}


