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

# String Interpolation

In Swift, `\()` is used for **string interpolation** — a way to insert the value of a variable or the result of an expression directly into a string.

---

### 🔹 Syntax

```swift
"Some text \(expression) more text"
```

Whatever is inside the `\()` will be **evaluated** and **converted to a string**, then inserted into the surrounding string.

---

### ✅ Examples

#### 1. **Inserting a Variable**
```swift
let name = "Alex"
print("Hello, \(name)!")
```
**Output:**  
```
Hello, Alex!
```

#### 2. **Inserting an Expression**
```swift
let a = 5
let b = 3
print("The sum is \(a + b).")
```
**Output:**  
```
The sum is 8.
```

#### 3. **Calling a Function**
```swift
func greet() -> String {
    return "Welcome!"
}
print("Message: \(greet())")
```
**Output:**  
```
Message: Welcome!
```

---

### 🧠 Why Use `\()`?

- It makes code **cleaner and more readable**.
- It avoids the need for string concatenation like `"Hello, " + name + "!"`.
- It works with **any type** that conforms to `CustomStringConvertible` (which most types do).

---


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







# Structs and Classes
In Swift, both **structs** and **classes** are used to create custom data types, but they have some important differences. Let’s break it down clearly:

---

## 🧱 Structs in Swift

A **struct** is a **value type**, meaning each instance keeps a unique copy of its data.

### ✅ Key Features:
- Value type (copied when assigned or passed)
- No inheritance
- Can have properties, methods, initializers
- Can conform to protocols
- Safer for multithreading due to immutability

### 🧪 Example:
```swift
struct Person {
    var name: String
    var age: Int

    func greet() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

var person1 = Person(name: "Alice", age: 30)
var person2 = person1
person2.name = "Bob"

print(person1.name) // Alice
print(person2.name) // Bob
```

---

## 🏛️ Classes in Swift

A **class** is a **reference type**, meaning instances share the same data when assigned or passed.

### ✅ Key Features:
- Reference type (shared when assigned or passed)
- Supports inheritance
- Can have deinitializers
- Can use identity operators (`===`, `!==`)
- More flexible but requires careful memory management

### 🧪 Example:
```swift
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func greet() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

var person1 = Person(name: "Alice", age: 30)
var person2 = person1
person2.name = "Bob"

print(person1.name) // Bob
print(person2.name) // Bob
```

---

## 🔍 Struct vs Class: Comparison Table

| Feature                  | Struct                        | Class                         |
|--------------------------|-------------------------------|-------------------------------|
| Type                     | Value type                    | Reference type                |
| Inheritance              | ❌ Not supported               | ✅ Supported                  |
| Memory behavior          | Copied on assignment          | Shared reference              |
| Mutability               | Immutable unless `mutating`   | Mutable by default            |
| Deinitializers           | ❌ Not available               | ✅ Available                  |
| Identity comparison      | ❌ Not possible                | ✅ Using `===` and `!==`      |

---

## 🧠 When to Use What?

- Use **structs** when:
  - You want immutability by default
  - You’re modeling simple data
  - You don’t need inheritance

- Use **classes** when:
  - You need shared state
  - You need inheritance or polymorphism
  - You need reference semantics

---

# Why Views are Structs and not Classes
Great question! SwiftUI views are implemented as **structs** instead of **classes** for several important reasons that align with SwiftUI’s design philosophy and performance goals.

---

## 🧱 1. **Value Semantics = Predictability**

Structs in Swift are **value types**, which means:

- When you assign a struct to a new variable or pass it to a function, it’s **copied**, not shared.
- This makes SwiftUI views **immutable by default**, which leads to **predictable behavior** and fewer bugs from shared mutable state.

In UI frameworks, predictability is crucial — you want to know exactly what a view will look like based on its current state.

---

## ⚡ 2. **Performance Optimization**

Value types allow the Swift compiler to perform **aggressive optimizations** like:

- **Copy-on-write**
- **Inline storage**
- **Avoiding heap allocations**

This makes SwiftUI views **lightweight and fast**, which is essential for rendering complex UIs efficiently.

---

## 🔁 3. **Declarative UI Design**

SwiftUI is **declarative**, meaning you describe *what* the UI should look like for a given state, not *how* to update it.

Using structs supports this model because:

- Views are **recreated** every time the state changes.
- SwiftUI compares the new view tree to the old one and updates only what’s necessary.

This is much easier and safer with **immutable structs** than with mutable classes.

---

## 🧼 4. **No Need for Inheritance**

SwiftUI uses **protocols and composition** instead of inheritance. Structs can conform to protocols, and SwiftUI views conform to the `View` protocol.

Since SwiftUI doesn’t rely on class inheritance, there’s no need for views to be classes.

---

## 🧠 Summary Table

| Feature                     | Struct (SwiftUI View)         | Class                         |
|-----------------------------|-------------------------------|-------------------------------|
| Type                        | Value                         | Reference                     |
| Memory behavior             | Copied                        | Shared                        |
| Mutability                  | Immutable by default          | Mutable                       |
| Performance                 | High (stack-allocated)        | Lower (heap-allocated)        |
| Inheritance                 | ❌ Not supported               | ✅ Supported                  |
| Ideal for SwiftUI?          | ✅ Yes                         | ❌ No                         |

---


# Struct and Classes On



Let's explore how **passing values** works in Swift when you create instances of **structs** and **classes**, like this:

```swift
ProductViewModel(productName: "iPhone")
```

---

### 🧱 1. **Structs and Classes in Swift**

Both **structs** and **classes** are used to define custom data types, but they behave differently in terms of **value vs. reference semantics**.

---

### 🧩 2. **Passing Values to Structs**

Structs in Swift automatically get a **memberwise initializer** if you don’t define one yourself:

```swift
struct Product {
    var name: String
    var price: Double
}

let product = Product(name: "iPhone", price: 999.99)
```

- This creates a **new copy** of the struct.
- Structs are **value types**, meaning they are **copied** when passed around.

---

### 🧠 3. **Passing Values to Classes**

Classes require you to define an initializer (`init`) if you want to pass values:

```swift
class ProductViewModel {
    var productName: String

    init(productName: String) {
        self.productName = productName
    }
}

let viewModel = ProductViewModel(productName: "iPhone")
```

- Classes are **reference types**, meaning they are **shared** when passed around.
- If you modify `viewModel` in one place, the change is visible everywhere that reference is used.

---

### 🔍 4. **What Happens in `ProductViewModel(productName: "iPhone")`?**

- Swift calls the `init(productName:)` initializer.
- It creates a new instance of `ProductViewModel`.
- The `productName` property is set to `"iPhone"`.

---

### 🔄 Struct vs Class Behavior Example

```swift
struct ProductStruct {
    var name: String
}

class ProductClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var struct1 = ProductStruct(name: "iPhone")
var struct2 = struct1
struct2.name = "MacBook"

print(struct1.name) // iPhone
print(struct2.name) // MacBook

var class1 = ProductClass(name: "iPhone")
var class2 = class1
class2.name = "MacBook"

print(class1.name) // MacBook
print(class2.name) // MacBook
```

- Structs are **copied**.
- Classes are **referenced**.

---




Here’s a complete **Swift Playground example** that demonstrates how values are passed to **structs** and **classes**, and how they behave differently:

---

### 🧪 Swift Playground Code

```swift
import Foundation

// MARK: - Struct Example (Value Type)
struct ProductStruct {
    var name: String
}

var struct1 = ProductStruct(name: "iPhone")
var struct2 = struct1  // This creates a copy
struct2.name = "MacBook"

print("Struct1 name: \(struct1.name)") // iPhone
print("Struct2 name: \(struct2.name)") // MacBook


// MARK: - Class Example (Reference Type)
class ProductClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var class1 = ProductClass(name: "iPhone")
var class2 = class1  // This shares the same reference
class2.name = "MacBook"

print("Class1 name: \(class1.name)") // MacBook
print("Class2 name: \(class2.name)") // MacBook
```

---

### 🧠 What You’ll Learn from Running This

- **Structs** are copied when assigned to a new variable or passed to a function.
- **Classes** are referenced, so changes affect all references to the same instance.

---
