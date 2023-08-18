let multiplyClosure: (Int, Int) -> Int = { (a, b) in
    return a * b
}

let result = multiplyClosure(3, 4) // result will be 12
print(result)


let addClosure: (Int, Int) -> Int = { $0 + $1 }

let addresult = addClosure(3, 4) // result will be 7
print(addresult)
