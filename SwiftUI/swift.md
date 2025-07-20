**Swift** is a powerful and intuitive programming language developed by **Apple Inc.** for building apps across all Apple platforms—**iOS, macOS, watchOS, and tvOS**. It was first introduced in 2014 as a modern replacement for Objective-C.

---

### 🚀 **Key Features of Swift**

1. **Safe**: Swift eliminates entire classes of unsafe code. It uses strong typing and error handling to help prevent bugs.
2. **Fast**: It’s designed for performance, often outperforming Objective-C and even C in some cases.
3. **Modern Syntax**: Clean, expressive, and easy to read and write.
4. **Interactive**: With tools like **Playgrounds** in Xcode, you can write Swift code and see the results immediately.
5. **Open Source**: Swift is open source and supported by a large community. You can even use it on Linux!

---

### 🧱 **What Can You Build with Swift?**

- **iOS apps** (iPhone, iPad)
- **macOS desktop apps**
- **watchOS apps** (Apple Watch)
- **tvOS apps** (Apple TV)
- **Server-side applications** (using frameworks like Vapor or Kitura)

---

### 🧑‍💻 Example Swift Code

```swift
import Foundation

var greeting = "Hello, Swift!"
print(greeting)
```

This simple program prints a greeting to the console.

---

### 🛠️ Tools for Swift Development

- **Xcode**: The official IDE for Swift development on macOS.
- **Swift Playgrounds**: A fun and interactive way to learn Swift, especially for beginners.
- **Swift Package Manager**: For managing dependencies and building Swift projects.

---



# Variables
In Swift, **variables** are used to store and manage data in your programs. Here's a breakdown of how they work:

---

### 🧠 **What is a Variable?**
A **variable** is a named container that holds a value which can be changed during the execution of a program.

---

### 📝 **Declaring Variables**

You use the `var` keyword to declare a variable:

```swift
var name = "Alice"
var age = 30
```

- `name` is a variable of type `String`
- `age` is a variable of type `Int`

Swift uses **type inference**, so you don’t always need to specify the type explicitly. But you can if you want:

```swift
var height: Double = 5.9
```

---

### 🔒 **Constants vs Variables**

If you don’t want the value to change, use `let` instead of `var`:

```swift
let birthYear = 1995
```

Trying to change `birthYear` later will cause a compile-time error.

---

### 🔄 **Changing Variable Values**

```swift
var score = 10
score = 15  // This is allowed because `score` is a variable
```

---

### 🧪 **Type Safety**

Swift is a **type-safe** language, so once a variable is assigned a type, it can’t hold a value of a different type:

```swift
var city = "Boston"
// city = 123  ❌ Error: Cannot assign value of type 'Int' to type 'String'
```

---

### 🧰 **Common Types**

- `Int` – whole numbers
- `Double` – floating-point numbers
- `String` – text
- `Bool` – true or false

---


# Functions

In Swift, **functions** are reusable blocks of code that perform a specific task. They help make your code more organized, readable, and maintainable.

---

### 🧱 **Basic Function Syntax**

```swift
func greet() {
    print("Hello!")
}
```

- `func` is the keyword to define a function.
- `greet` is the function name.
- `()` means it takes no parameters.
- `{}` contains the code that runs when the function is called.

To call the function:

```swift
greet()
```

---

### 📦 **Functions with Parameters**

You can pass values into functions using **parameters**:

```swift
func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Alice")
```

---

### 🔁 **Functions with Return Values**

Functions can return a value using the `->` symbol:

```swift
func add(a: Int, b: Int) -> Int {
    return a + b
}

let result = add(a: 3, b: 5)  // result is 8
```

---

### 🧩 **Multiple Parameters and Labels**

Swift allows **external parameter names** for clarity:

```swift
func multiply(_ x: Int, by y: Int) -> Int {
    return x * y
}

let product = multiply(4, by: 5)  // product is 20
```

- `_` hides the first parameter label when calling the function.
- `by` is an external label for the second parameter.

---

### 🧠 **Advanced Features**

- **Default Parameters**:
  ```swift
  func greet(name: String = "Guest") {
      print("Hello, \(name)!")
  }

  greet()           // Hello, Guest!
  greet(name: "Bob") // Hello, Bob!
  ```

- **Variadic Parameters** (accept multiple values):
  ```swift
  func sum(numbers: Int...) -> Int {
      return numbers.reduce(0, +)
  }

  sum(numbers: 1, 2, 3, 4)  // returns 10
  ```

- **Nested Functions**:
  ```swift
  func outer() {
      func inner() {
          print("Inside inner function")
      }
      inner()
  }
  ```

---

# Loops
In Swift, **loops** are used to repeat a block of code multiple times. Swift provides several types of loops, each suited for different use cases.

---

### 🔁 **1. `for-in` Loop**

Used to iterate over a sequence like an array, range, or string.

```swift
let names = ["Alice", "Bob", "Charlie"]

for name in names {
    print("Hello, \(name)!")
}
```

You can also use it with a range:

```swift
for number in 1...5 {
    print(number)
}
```

- `1...5` is a **closed range** (includes 5).
- `1..<5` is a **half-open range** (excludes 5).

---

### 🔄 **2. `while` Loop**

Repeats a block of code **while** a condition is true.

```swift
var count = 3

while count > 0 {
    print("Countdown: \(count)")
    count -= 1
}
```

---

### 🔁 **3. `repeat-while` Loop**

Similar to `while`, but it **always runs at least once** because the condition is checked **after** the loop body.

```swift
var number = 1

repeat {
    print("Number is \(number)")
    number += 1
} while number <= 3
```

---

### ⏭️ **Control Flow in Loops**

- `break`: exits the loop early.
- `continue`: skips the current iteration and moves to the next one.

```swift
for i in 1...5 {
    if i == 3 {
        continue  // Skip 3
    }
    print(i)
}
```

---
# Protocols
In Swift, a **protocol** is a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. Classes, structs, and enums can **adopt** and **conform** to protocols by implementing these requirements.

---

### 🧱 **Basic Protocol Syntax**

```swift
protocol Greetable {
    func greet()
}
```

This defines a protocol named `Greetable` that requires a `greet()` method.

---

### 🧩 **Conforming to a Protocol**

```swift
struct Person: Greetable {
    var name: String

    func greet() {
        print("Hello, my name is \(name).")
    }
}
```

Here, the `Person` struct conforms to the `Greetable` protocol by implementing the `greet()` method.

---

### 🧠 **Why Use Protocols?**

- **Abstraction**: Define behavior without specifying how it's implemented.
- **Polymorphism**: Write flexible and reusable code.
- **Protocol-Oriented Programming**: A core philosophy in Swift that encourages using protocols instead of inheritance.

---

### 🧰 **Protocols with Properties**

Protocols can require properties too:

```swift
protocol Identifiable {
    var id: String { get }
}
```

- `{ get }` means the property must be readable.
- `{ get set }` means it must be readable and writable.

---

### 🔁 **Protocol Inheritance**

Protocols can inherit from other protocols:

```swift
protocol Named {
    var name: String { get }
}

protocol Employee: Named {
    var jobTitle: String { get }
}
```

---

### 🧪 **Using Protocols in Functions**

You can use protocols as types:

```swift
func introduce(_ person: Greetable) {
    person.greet()
}
```

---

### 🧰 **Protocol Extensions**

You can provide default implementations:

```swift
extension Greetable {
    func greet() {
        print("Hello there!")
    }
}
```

Now any type that conforms to `Greetable` but doesn’t implement `greet()` will use this default.

---


