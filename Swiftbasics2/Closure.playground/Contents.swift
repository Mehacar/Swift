import UIKit


func mysum(num1: Int, num2: Int) -> Int{
    return num1 + num2
}


func calculate(num1: Int, num2: Int, myfunction: (Int, Int) -> Int) -> Int{
    return myfunction(num1,num2)
}

calculate(num1: 4,num2: 11, myfunction: mysum)

/*Closure*/


func mymultiply(num1: Int, num2: Int) -> Int{
    return num1 * num2
}

/*
{ (num1: Int, num2: Int) -> Int in
    return num1 * num2
}
*/

calculate(num1: 4,num2: 13, myfunction: { (num1: Int, num2: Int) -> Int in
    return num1 * num2
})

calculate(num1: 4,num2: 13, myfunction: { (num1, num2) -> Int in
    return num1 * num2
})

calculate(num1: 4,num2: 13, myfunction: { (num1, num2) in
    return num1 * num2
})

calculate(num1: 4,num2: 13, myfunction: { (num1, num2) in num1 * num2})

calculate(num1: 4,num2: 13, myfunction: {$0 * $1 })

/*map*/

let myArray = [10,20,30,40]

func devide(num1: Int) -> Int{
    return num1 / 5
}

myArray.map(devide)

myArray.map({$0 / 5})

/* Question */

func hesapla(_ a: Int, _ b: Int, _ islem: (Int, Int) -> Int) -> Int {
    return islem(a, b)
}

let topla: (Int,Int) -> Int = { $0 + $1 }
let carp: (Int,Int) -> Int = { $0 * $1 }

print(hesapla(4, 5, topla)) // 9
print(hesapla(4, 5, carp))  // 20



