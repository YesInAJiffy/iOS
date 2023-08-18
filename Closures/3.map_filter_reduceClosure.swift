// MAP
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let squaredNumbers = numbers.map
{
    (number) -> Int in
    return number * number
}
print("Squared Numbers \(squaredNumbers )")
// OR
let doubledNumbers = numbers.map { $0 * $0 }
print("SQUARED AGAIN Numbers \(doubledNumbers)")

// FILTER
let evenNumbers = numbers.filter
{
    number in
    return number % 2 == 0
}
print("Even Numbers \(evenNumbers)")
// OR
let oddNumbers = numbers.filter { $0 % 2 == 1 }
print("Odd Numbers \(oddNumbers)")

//REDUCE
let sum = numbers.reduce(0)
{
    (result, number) in
    return result + number
}
print("Sum of numbers: \(sum)") // Prints "Sum of numbers: 15"
//OR
let multiply = numbers.reduce(1) { $0 * $1 }
print("Multiply result:  \(multiply)")



