import UIKit

var greeting = "Hello, playground"

class Animal {
    func running() {
        print("Running")
    }
}

class Dog : Animal {
    
}

let black = Dog()
black.running()

class Cat : Animal {
    
}

let catlin = Cat()
catlin.running()

class Turtle : Animal {
    
}
let ninja = Turtle()
ninja.running()

// Define a Dog class that inherits from the Animal class, and within it define a dog named “black” with a running method.

// Define a Bitcoin class that inherits from the CryptoCurrency class and whose displayInfo method prints output.


class CryptoCurrency {
    var symbol : String = ""
    func displayInfo(){
        print("Symbol: \(symbol)")
    }
}

class Bitcoin : CryptoCurrency {
    override func displayInfo() {
        
        super.displayInfo()
        
        print("Bitcoin (\(symbol)): Mevcut fiyatı ... ")
    }

}

let bitcoin = Bitcoin()
bitcoin.symbol = "BTC"
bitcoin.displayInfo()
