let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


var reversedNamess = names.sorted
{
    (_s1: String, _s2: String) -> Bool in
    return _s1 > _s2
    
}
print("Reversed Names: \(reversedNamess)")

var sortedNames = names.sorted{$0 < $1}
print("Sorted Names: \(sortedNames)")

