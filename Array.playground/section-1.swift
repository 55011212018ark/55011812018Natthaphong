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