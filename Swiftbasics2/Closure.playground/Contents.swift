import UIKit

var greeting = "Hello, playground"
// write sum func,
//write calculate taking sum as parameter

func mysum(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

func calculate(num1: Int, num2: Int, myfunction: (Int, Int) -> Int) -> Int{
    return myfunction(num1,num2)
}

calculate(num1: 4,num2: 11, myfunction: mysum)

