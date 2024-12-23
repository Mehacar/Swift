import UIKit

var number = 0

while number <= 7 {
    print(number)
    number += 1
}

//For loop

var numbers = [10,20,30,40,50]
var result = 0

for divideNumber in numbers {
    result = divideNumber / 2
    print(result)
}

//If

var personAge = 32

if personAge < 25 {
    print("young")
} else if personAge >= 25 && personAge < 35 {
    print( "middle")
} else if personAge >= 35 && personAge < 45 {
    print("old")
}

// Switch

let condition = "Rainy"

switch condition {
case "Rainy":
    print("Take an umbrella")
case "Sunny":
    print("Bring a hat")
case "Snowy":
    print("Wear a coat")
default :
    print("Have a nice day")
}
