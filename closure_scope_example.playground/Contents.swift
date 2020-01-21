import Foundation

func callMe() -> (String) -> Void {
    var counter = 1
    return { [localCounter = counter] in
        print($0)
        counter += 1
        print("+++ Counter: \(counter)")
        print("--- Closure Scoped Counter: \(localCounter)")
    }
}

let result = callMe()

result("hello")
result("hey")
result("hi")
