//: [Previous](@previous)
/*:
 # Capturing values

 Closures have a distinct feature that makes them stand out: they can capture values from their surrounding context.

 From Apple's documentation:

 > A closure can capture constants and variables from the surrounding context in which it is defined. The closure can then refer to and modify the values of those constants and variables from within its body, even if the original scope that defined the constants and variables no longer exists.*
 */

let location = "San Francisco"
let explore = {
    print("Exploring \(location)")
}

explore()

/*:
 The closure assigned to "explore" closes over the local variable "location" since it is available in the scope that the closure is defined in. We can access the constant without declaring it locally inside the closure.
 </aside>

 Here's another example of closures closing over variables.
 */

func addScore(_ points: Int) -> Int {
    let score = 42
    let calculate = {
        return score + points
    }

    let result = calculate()
    return result
}

let value = addScore(11)
print(value)

var totalScore = 0
let calculate: (Int) -> Int = { pointsToAdd in
    return totalScore + pointsToAdd
}

func addScore2(_ points: Int) -> Int {
    let result = calculate(points)
    return result
}

totalScore = addScore2(10)
totalScore = addScore2(10)
totalScore = addScore2(10)
totalScore = addScore2(10)

totalScore
//: [Next](@next)
