// Playground - noun: a place where people can play

import UIKit

var ID = [55011212018,55011221005,55011212092]
var Name = ["Natthaphong","Pamot","Passakorn"]

var NewID = ID[0]+1

ID += 55011212180
ID += [54011212233,55011212029]


//*****//
let onSaleInFerred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whopie Cushion"
let nameInExplicit = "whopie Cushion"

println("\(nameInferred)on sale for ")

//**********//

//Dic

let array: Array<Int> = [1,2,3,4]
let dictionary:Dictionary<String,Int> = ["dog":1,"elephant":2,"dog":3]


var airport:[String: String] = ["TYO":"Tokyo","DUB":"Dublin","BKK":"Bankkok"]

if let oldValue = airport.updateValue("Dubin International", forKey: "DUB"){
    println("the old value DUB was\(oldValue).")
}











