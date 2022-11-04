import UIKit

var name: String = "Michael"
print("Name \(name)")


let Geburtsjahr = 1980
print("Geburtsjahr \(Geburtsjahr)")



var Alter = 42
print("Alter \(Alter)")   
print("########################################")
print("Mein Alter vor meinem Geburtstag \(Alter)")


Alter += 1

print("Mein Alter nach meinem Geburtstag \(Alter)")

print("########################################")

var licht: Bool = true

if (licht == true){
    print("Das Licht ist An")
}
else{
    print("Das Licht ist Aus")
}
print("########################################")
var urlaubstage: Int = 24
print("Verfügbarer Urlaub \(urlaubstage)")

var geplanterUrlaub: Int = 10
print("geplanter Urlaub \(geplanterUrlaub)")

var resturlaub: Int {
    get{
        urlaubstage - geplanterUrlaub
    }
    set{
        geplanterUrlaub + newValue
    }
}

print("Rest Urlaub \(resturlaub)")

print("########################################")

var abcList: Array = ["a","b","c","d","e","f","g","h","i","j"]

print("Die ersten 10 Buchstaben des ABC \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")
abcList.append("k")
print("Den 11. Buchstaben hinzugefügt \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")
abcList.removeFirst()
abcList.removeLast()
abcList.remove(at: 5)
print("ersten,fünften,letzten buchsteaben entfernt \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")
abcList.insert("a", at: 0)
abcList.insert("g", at: 6)
abcList.append("k")
abcList.append("l")
print(abcList)
print("-----------------------------------------------------------------------------------------------------------------------------------------")
let abcList2: Array = ["m","n","o","p","q","r","s","t","u"]

abcList.append(contentsOf: abcList2)
print("abcList und abcList2 zusammen \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")
abcList.shuffle()
print("abcList shuffle \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")
abcList.sort()
print("wieder die richtige Reihenfolge \(abcList)")
print("-----------------------------------------------------------------------------------------------------------------------------------------")









