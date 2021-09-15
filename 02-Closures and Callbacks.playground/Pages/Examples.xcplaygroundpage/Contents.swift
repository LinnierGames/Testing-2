//: [Previous](@previous)
/*:
 ## Examples
 * callout(Activity):
 Let's create some closures that capture values
 */

var foobar = "barfoo"
let closure: (String) -> Void = { (string1: String) -> Void in
    let capturedValue = foobar
    print(capturedValue)
    let sumOfFoobar = capturedValue + string1
}

//let closure2: (String) -> Void = { foobar in
//    let capturedValue = foobar
//    print(foobar)
//
//    let sumOfFoobar = foobar + "bar foo"
//}
//closure2(foobar)

//: [Next](@next)
