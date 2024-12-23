import UIKit

// Set

// Unordered collection, unique elements

var mySet : Set = [1, 2, 3, 4, 2, 4]
var myStringSet : Set = ["a", "b", "c", "b"]


var myInternetArray = [1,2,3,4,5,5,6,5,5,3,3]
var myInternetSet : Set = Set(myInternetArray)
print(myInternetSet)

var SetConnect = mySet.union(myInternetSet)

SetConnect.sorted(by: <)


// Dictionary
// Key-Value pairing

var myDictionary = ["Nasa" : "JamesWeb", "SpaceX" : "Falcon", "SpaceX2" : "SpaceShift"  ]
myDictionary["SpaceX"]
myDictionary["SpaceX"] = "SemiTr"
print(myDictionary)

var myTeams = ["Alex" : 100, "James" : 200, "John" : 300]
myTeams["John"]

print(myDictionary["Nasa"]!)

print(myDictionary["f"])

