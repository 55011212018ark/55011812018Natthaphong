// Playground - noun: a place where people can play

import UIKit

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var   shoppingListExplicit: [String] = [Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contins \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas", "Apples"]
shoppingList

// Add Value to Array

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items
shoppingList += ["Chocolete Spread","Cheese","Butter"]
//shoppingList now contains 7 items
shoppingList.insert("Maple", atIndex: 0)
//shoppingList now contains 7 items
//"Maple Syrup" is now the frist item in making spancakes
shoppingList += ["Baking Powder"]
var firstIem = shoppingList[0]
//fiestItem is equal to "Eggs"
shoppingList[4...6] = ["Bananas","Apples"]
//shoppingList now contains 6 item



//Dictionnary

let array:Array<Int> = [1,2,3,4]
let dictionnary:Dictionary<String,Int> = ["dog":1,"elephant":2]

var airports: [String: String] = ["TYO":"Tokyo","DUB":"Dublin"]
if  airports.isEmpty{
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}
// prints "the airports dictionary is not empty."

println("The airports dictionary contains \(airports.count) items.")
//  prints "The airports dictionary contains 2 items."


//Update and Add value Dictionary

airports["LHR"] = "London"
// the airports dictionary now contains 3 items



airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changed to "London Heathow"


if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
// prints "The old value for DUB was Dublin."


//Remove value Dictionary

airports["APL"] = "Apple International"
    //
    airports["APL"] = nil
    //
    
if  let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictionary dose not contain a value for DUB.")
}
//prints "the removed airport's name is Dublin Internaional








