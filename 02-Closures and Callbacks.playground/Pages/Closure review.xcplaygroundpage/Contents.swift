/*:
 ## What is a closure?

 Self contained blocks of functionality that can be passed around and used in your code.
 */

let greeting = {
    print("Welcome back!")
}

greeting()

// Closures with params
let greetingWithAMessage: (String) -> Void = { name in
    print("Welcome back, \(name)!")
}

greetingWithAMessage("Tahoe 🐶")
