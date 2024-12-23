import UIKit

var myName : String?

myName?.uppercased()

//myName!.uppercased() if we put the "!" it must be assigned with value. but this stuation is optional because we expected the name



//TypeCast witth optionals

var myAge = "5"

var intAge = Int(myAge)! * 5 // here We can get an error, example "5" -> "asff"
//or
var intAge2 = (Int(myAge) ?? 0 ) * 5 // know we can take "0"
// Best vay "if let"

if let intAge3 = Int(myAge) {
    print(intAge3 * 4)
} else {
    print("Invaild Value")
}


