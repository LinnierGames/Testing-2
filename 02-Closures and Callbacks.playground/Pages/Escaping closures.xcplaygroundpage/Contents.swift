//: [Previous](@previous)
/*:
 ## Escaping and non escaping closures

 Closures come in two different variants - **escaping** and **non-escaping**.

 When a closure is escaping it means that the closure will outlive, or leave the scope that you’ve passed it to.

 Non-escaping closures are called within the function it was passed into.
 */
let name = "erick"

func doSomething() {
    let age = 99
    print(age, name)
}

doSomething()

print(name)












import Foundation

func doSomethingRightNow(action: () -> Void) {
    // .. do something right now

    action()

    // Finished doing something
}

func doSomethingRightNow2(action: () -> Void) {
}

func doSomethingAfterTwoSeconds(action: @escaping () -> Void) {
    let twoSeconds: TimeInterval = 2
    Timer.scheduledTimer(withTimeInterval: twoSeconds, repeats: false) { timer in
        action()
    }

    // Finish doing something
}








let printHelloWorld = {
    print("hello world")
}
doSomethingAfterTwoSeconds(action: printHelloWorld)

URLSession.shared.dataTask(
    with: URL(string: "yahoo.com")!,
    completionHandler: { (data: Data?, response: URLResponse?, error: Error?) in
        // do something with the data that came from the internet
    }
)

func doSomething(foobar: Int, completionHandler: @escaping () -> Void) {
    // pretend takes two seconds of work

    let twoSeconds: TimeInterval = 2
    Timer.scheduledTimer(withTimeInterval: twoSeconds, repeats: false) { timer in
        completionHandler()
    }
}

doSomething(foobar: 2) {
    print("yay it's done doing something!")
}

//func doSomethingRightNow2(action: @escaping () -> Void) {
//}
//
//func doSomethingRightNow(action: () -> Void) {
//    // .. do something right now
//
//    doSomethingRightNow2(action: action)
//
//    // Finished doing something
//}

/*:
 By default, all closures are non escaping. This helps with memory management.
 */

//: [Next](@next)
