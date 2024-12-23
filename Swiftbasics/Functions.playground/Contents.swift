import UIKit

func myFunction() {
    print("First Swift Function")
}

myFunction()

// function example

func mySum (val1: Int, val2: Int) -> Int{
   return val1 + val2
}

print(mySum(val1: 13, val2: 23))

func logicFunc(state1: Int, state2: Int) -> Bool{
    if state1 > state2 {
        return true
    } else {
        return false
    }
}

print(logicFunc(state1: 34, state2: 55))

