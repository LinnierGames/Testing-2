//: [Previous](@previous)
/*:
 ## Trailing closures

 We can send closures as parameters to functions. If the closure happens to be the last parameter sent, we can use **trailing closure syntax**
 */

func washHands(howManyTimes: Int, action: () -> Void) {
    print("Get some soap 🧼")
    action()
    print("Hands are clean. 🙌🏼")
}

washHands(howManyTimes: 2, action: {
    print("Singing for 20 seconds 🎤")
})

washHands(howManyTimes: 2) {
    print("Singing for 20 seconds 🎤")
}

washHands(howManyTimes: 5) {
    print("LLOLOLOL")
}

washHands(howManyTimes: 2) {
    print("Singing for 20 seconds 🎤")
}

/*:
 Its purpose is readability (specially for long closures), so it is recommended to use when a function accepts a closure as a final argument.
 */

//: [Next](@next)
